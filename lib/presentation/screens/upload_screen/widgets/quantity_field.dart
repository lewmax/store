import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/product/product_form/product_form_bloc.dart';
import '../../../core/input_decoration.dart';

class QuantityField extends HookWidget {
  const QuantityField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<ProductFormBloc, ProductFormState>(
      listenWhen: (prev, curr) =>
          prev.saveFailureOrSuccess != curr.saveFailureOrSuccess,
      listener: (context, state) {
        textEditingController.text = '';
      },
      child: BlocListener<ProductFormBloc, ProductFormState>(
        listenWhen: (prev, curr) => prev.isEditing != curr.isEditing,
        listener: (context, state) {
          textEditingController.text =
              state.product.quantity.getOrCrash().toString();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 45.w,
            child: TextFormField(
              decoration: TextFieldDecoration.uploadFieldDecoration.copyWith(
                labelText: 'Quantity',
                hintText: 'Add Quantity',
              ),
              controller: textEditingController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              onChanged: (value) => context
                  .read<ProductFormBloc>()
                  .add(ProductFormEvent.quantityChanged(value)),
              validator: (_) => context
                  .watch<ProductFormBloc>()
                  .state
                  .product
                  .quantity
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      invalidInteger: (_) => 'Invalid quantity',
                      orElse: () => 'Invalid',
                    ),
                    (_) => null,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

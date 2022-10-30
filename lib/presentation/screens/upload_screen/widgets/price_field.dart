import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/product/product_form/product_form_bloc.dart';
import '../../../core/input_decoration.dart';

class PriceField extends HookWidget {
  const PriceField({Key? key}) : super(key: key);

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
              state.product.price.getOrCrash().toString();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 38.w,
            child: TextFormField(
              decoration: TextFieldDecoration.uploadFieldDecoration.copyWith(
                labelText: 'price',
                hintText: 'price .. \$',
              ),
              controller: textEditingController,
              textInputAction: TextInputAction.next,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onChanged: (value) => context
                  .read<ProductFormBloc>()
                  .add(ProductFormEvent.priceChanged(value)),
              validator: (_) => context
                  .watch<ProductFormBloc>()
                  .state
                  .product
                  .price
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      invalidDouble: (_) => 'Cannot be empty',
                      orElse: () => 'salam',
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

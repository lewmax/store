import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/product/product_form/product_form_bloc.dart';
import '../../../core/input_decoration.dart';

class NameField extends HookWidget {
  const NameField({Key? key}) : super(key: key);

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
          textEditingController.text = state.product.name.getOrCrash();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100.w,
            child: TextFormField(
              decoration: TextFieldDecoration.uploadFieldDecoration.copyWith(
                labelText: 'product name',
                hintText: 'Enter product name',
              ),
              textInputAction: TextInputAction.next,
              maxLength: 200,
              maxLines: 3,
              controller: textEditingController,
              keyboardType: TextInputType.text,
              onChanged: (value) => context
                  .read<ProductFormBloc>()
                  .add(ProductFormEvent.nameChanged((value))),
              validator: (_) => context
                  .watch<ProductFormBloc>()
                  .state
                  .product
                  .name
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      invalidFullName: (_) => 'Name is invalid',
                      orElse: () => null,
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

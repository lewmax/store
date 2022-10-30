import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/product/product_form/product_form_bloc.dart';
import '../../../core/input_decoration.dart';

class DescriptionField extends HookWidget {
  const DescriptionField({Key? key}) : super(key: key);

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
          textEditingController.text = state.product.description.getOrCrash();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100.w,
            child: TextFormField(
              decoration: TextFieldDecoration.uploadFieldDecoration.copyWith(
                labelText: 'product description',
                hintText: 'Enter product description',
              ),
              textInputAction: TextInputAction.done,
              maxLength: 800,
              maxLines: 5,
              controller: textEditingController,
              keyboardType: TextInputType.multiline,
              onChanged: (value) => context
                  .read<ProductFormBloc>()
                  .add(ProductFormEvent.descriptionChanged((value))),
              validator: (_) => context
                  .watch<ProductFormBloc>()
                  .state
                  .product
                  .description
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      invalidFullName: (_) => 'Description is invalid',
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

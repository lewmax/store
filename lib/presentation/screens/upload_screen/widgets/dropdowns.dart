import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/product_form/product_form_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../../domain/product/values.dart';

class Dropdowns extends StatelessWidget {
  const Dropdowns({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormBloc, ProductFormState>(
      builder: (context, state) => SizedBox(
        height: 50.w,
        width: 50.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: const Text('select category'),
              value: state.product.category.value.fold(
                (f) => null,
                (category) => category,
              ),
              items: categories
                  .map((String item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
              onChanged: (value) {
                context
                    .read<ProductFormBloc>()
                    .add(ProductFormEvent.categoryChanged(value.toString()));
              },
            ),
            if (state.product.category.failureOrUnit.isRight())
              DropdownButton(
                hint: const Text('select subcategory'),
                value: state.product.subCategory.value
                    .fold((f) => null, (subCat) => subCat),
                items: subCategories[state.product.category.getOrCrash()]!
                    .map((String item) => DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        ))
                    .toList(),
                onChanged: (value) {
                  context.read<ProductFormBloc>().add(
                        ProductFormEvent.subCategoryChanged(value.toString()),
                      );
                },
              )
            else
              DropdownButton(
                hint: const Text('select subcategory'),
                items: null,
                onChanged: (void value) {},
              ),
          ],
        ),
      ),
    );
  }
}

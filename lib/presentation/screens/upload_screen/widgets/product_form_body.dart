import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/product_form/product_form_bloc.dart';
import 'package:multi_store/presentation/screens/upload_screen/widgets/price_field.dart';
import 'package:multi_store/presentation/screens/upload_screen/widgets/quantity_field.dart';
import 'package:multi_store/presentation/screens/upload_screen/widgets/upload_buttons.dart';
import 'description_field.dart';
import 'dropdowns.dart';
import 'multi_image.dart';
import 'name_field.dart';

class ProductFormBody extends StatelessWidget {
  const ProductFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: BlocConsumer<ProductFormBloc, ProductFormState>(
            listenWhen: (oldState, newState) =>
                oldState.isSaving != newState.isSaving,
            listener: (context, state) {
              state.product.failure?.maybeMap(
                invalidListTooShort: (_) =>
                    _showSnackBar(context, 'images list is empty'),
                invalidCategory: (_) =>
                    _showSnackBar(context, 'invalid Category'),
                invalidSubCategory: (_) =>
                    _showSnackBar(context, 'invalid SubCategory'),
                orElse: () => _showSnackBar(context, 'enter fields correctly'),
              );
              state.imagesList.failureOrUnit.fold(
                (f) => _showSnackBar(context, 'Images list is empty'),
                (r) => null,
              );
            },
            builder: (context, state) => Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [MultiImage(), Dropdowns()],
                  ),
                  buildDivider(),
                  const PriceField(),
                  const QuantityField(),
                  const NameField(),
                  const DescriptionField(),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: const UploadButtons(),
    );
  }

  Widget buildDivider() {
    return const SizedBox(
      height: 30,
      child: Divider(color: Colors.yellow, thickness: 1.5),
    );
  }

  void _showSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:multi_store/application/product/product_form/product_form_bloc.dart';
import 'package:multi_store/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/product/product.dart';
import 'widgets/product_form_body.dart';
import 'widgets/saving_loading_overlay.dart';

class UploadScreen extends StatelessWidget {
  final Product? product;

  const UploadScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<ProductFormBloc>()..add(ProductFormEvent.initialised(product)),
      child: BlocConsumer<ProductFormBloc, ProductFormState>(
        listenWhen: (oldState, newState) =>
            oldState.saveFailureOrSuccess != newState.saveFailureOrSuccess,
        listener: (context, state) {
          state.saveFailureOrSuccess?.fold(
            (f) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    f.map(
                      insufficientPermissions: (_) =>
                          'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                      unexpected: (_) =>
                          'Unexpected error occured, please contact support.',
                    ),
                  ),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            (_) {
              print(state.saveFailureOrSuccess);
              context
                  .read<ProductFormBloc>()
                  .add(const ProductFormEvent.formCleared());
              _showSnackBar(context, 'Success upload');
            },
          );
        },
        buildWhen: (prev, curr) => prev.isSaving != curr.isSaving,
        builder: (context, state) {
          return Stack(
            children: [
              const ProductFormBody(),
              SavingLoadingOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
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

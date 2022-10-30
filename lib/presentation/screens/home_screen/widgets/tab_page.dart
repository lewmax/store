import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/product_watcher/product_watcher_bloc.dart';

import '../../../../injection.dart';
import 'products_grid.dart';

class TabPage extends StatelessWidget {
  final String categoryName;

  const TabPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
      bloc: getIt<ProductWatcherBloc>()
        ..add(
          ProductWatcherEvent.watchByCategoryStarted(categoryName),
        ),
      builder: (context, state) {
        return state.map(
          initial: (_) => const Center(child: Text('No Products loaded')),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ProductsGrid(products: state.products),
            ),
          ),
          loadFailure: (state) => Center(
            child: Text(
              state.productFailure.maybeMap(
                insufficientPermissions: (_) => 'Insufficient Permissions!',
                orElse: () => 'Unexpected error occured while loading products',
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/product_watcher/product_watcher_bloc.dart';
import 'package:multi_store/injection.dart';

import '../../home_screen/widgets/products_grid.dart';

class SubCategoryScreen extends StatelessWidget {
  final String mainCatName;
  final String subCatName;

  const SubCategoryScreen(
      {super.key, required this.mainCatName, required this.subCatName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          subCatName,
          style: const TextStyle(
              color: Colors.black, fontSize: 28, letterSpacing: 1.5),
        ),
      ),
      body: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
        bloc: getIt<ProductWatcherBloc>()..add(
          ProductWatcherEvent.watchByCategoryAndSubStarted(
            mainCatName,
            subCatName,
          ),
        ),
        builder: (context, state) {
          return state.map(
            initial: (_) =>
                const Center(child: Text('No Products loaded')),
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
                  insufficientPermissions: (_) =>
                  'Insufficient Permissions!',
                  orElse: () =>
                  'Unexpected error occured while loading products',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/product_watcher/product_watcher_bloc.dart';

import '../../../../domain/product/product.dart';
import '../../../../injection.dart';
import '../../../core/app_router.gr.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProductWatcherBloc>(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey.shade300,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: CupertinoSearchTextField(
              autofocus: true,
              backgroundColor: Colors.white,
              onChanged: (value) => context
                  .read<ProductWatcherBloc>()
                  .add(ProductWatcherEvent.watchByQuery(value)),
            ),
          ),
          body: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const Center(child: Text('Start searching')),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (_) =>
                    const Center(child: Text('Start searching')),
                loadSuccess: (state) {
                  return ListView(
                    children: state.products.isEmpty
                        ? [const Center(child: Text('No products found'))]
                        : state.products
                            .map((product) => SearchItem(product: product))
                            .toList(),
                  );
                },
              );
            },
          ),
        );
      }),
    );
  }
}

class SearchItem extends StatelessWidget {
  final Product product;

  const SearchItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<AppRouter>().push(ProductScreenRoute(prod: product));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          height: 100,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(product.imageUrls[0].getOrCrash()),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Flexible(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      product.name.getOrCrash(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      product.description.getOrCrash(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/favorite_product_watcher/favorite_product_watcher_bloc.dart';

import '../../../application/tab_navigation/tab_navigation_cubit.dart';
import '../../../injection.dart';
import 'widgets/wish_list_view.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Wishlist',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body:
          BlocBuilder<FavoriteProductWatcherBloc, FavoriteProductWatcherState>(
        bloc: getIt<FavoriteProductWatcherBloc>()
          ..add(const FavoriteProductWatcherEvent.watchStarted()),
        buildWhen: (oldState, newState) => oldState != newState,
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(child: Text('No Products loaded')),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              final products = state.products;
              if (products.isEmpty) {
                return emptyWishlist(context);
              } else {
                return WishListView(products: products);
              }
            },
            loadFailure: (state) => Center(
              child: Text(
                state.productFailure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient Permissions!',
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

  Widget emptyWishlist(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Your wishlist is empty', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 50),
          Material(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(50),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.6,
              onPressed: () {
                Navigator.pop(context);
                context.read<TabNavigationCubit>().changeTabIndex(0);
              },
              child: const Text(
                'Continue shopping',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

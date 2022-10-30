import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/product/product_watcher/product_watcher_bloc.dart';
import 'package:multi_store/application/tab_navigation/tab_navigation_cubit.dart';
import 'package:multi_store/presentation/core/app_router.gr.dart';
import 'package:sizer/sizer.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/user/user_actor/user_actor_bloc.dart';
import '../../../../application/cart/cart_actor/cart_actor_bloc.dart';
import '../../../../domain/product/product.dart';
import '../../../../injection.dart';
import '../../cart_screen/widgets/badge_widget.dart';
import '../widgets/divider_widget.dart';
import '../widgets/image_gallery.dart';
import '../widgets/products_grid.dart';

class ProductScreen extends StatelessWidget {
  final Product prod;

  const ProductScreen({Key? key, required this.prod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
      bloc: getIt<ProductWatcherBloc>()
        ..add(
          ProductWatcherEvent.watchByCategoryAndSubStarted(
            prod.category.getOrCrash(),
            prod.subCategory.getOrCrash(),
          ),
        ),
      builder: (context, state) {
        return state.map(
          initial: (_) => const Center(child: Text('No Info')),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadFailure: (state) => Center(
            child: Text(
              state.productFailure.maybeMap(
                insufficientPermissions: (_) => 'Insufficient Permissions!',
                orElse: () =>
                    'Unexpected error occured while loading information',
              ),
            ),
          ),
          loadSuccess: (state) {
            final product =
                state.products.firstWhere((element) => element.id == prod.id);
            return Material(
              child: SafeArea(
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        ImageGallery(imageUrls: product.imageUrls),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 50),
                          child: Column(
                            children: [
                              Text(
                                product.name.getOrCrash(),
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'USD ',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        product.price
                                            .getOrCrash()
                                            .toStringAsFixed(2),
                                        style: const TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  BlocBuilder<AuthBloc, AuthState>(
                                    builder: (context, state) {
                                      return state.maybeMap(
                                        authenticatedSupplier: (state) {
                                          if (state.user.id == product.id) {
                                            return const Icon(
                                              Icons.edit,
                                              color: Colors.red,
                                            );
                                          } else {
                                            return heartIcon(context, product);
                                          }
                                        },
                                        orElse: () =>
                                            heartIcon(context, product),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                '${product.quantity.getOrCrash()} pieces available',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.blueGrey),
                              ),
                              DividerWidget(
                                color: Colors.yellow.shade900,
                                label: '  Item Description  ',
                              ),
                              Text(
                                product.description.getOrCrash(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey.shade600,
                                ),
                              ),
                              DividerWidget(
                                color: Colors.yellow.shade900,
                                label: '  Similar Items  ',
                              ),
                              SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: ProductsGrid(products: state.products),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottomSheet: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.read<ProductWatcherBloc>().add(
                                  ProductWatcherEvent.watchBySupplierIdStarted(
                                    product.sId.getOrCrash(),
                                  ),
                                );
                            getIt<AppRouter>().push(
                              StoreScreenRoute(
                                  storeId: product.sId.getOrCrash()),
                            );
                          },
                          icon: const Icon(Icons.store),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            context
                                .read<TabNavigationCubit>()
                                .changeTabIndex(3);
                          },
                          icon: const BadgeWidget(),
                        ),
                        MaterialButton(
                          minWidth: 60.w,
                          height: 40,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          color: Colors.yellow,
                          onPressed: () {
                            context
                                .read<CartActorBloc>()
                                .add(CartActorEvent.addNewToCart(product));
                          },
                          child: const Text('ADD TO CART'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget heartIcon(BuildContext context, Product product) {
    return BlocBuilder<UserActorBloc, UserActorState>(
      builder: (_, state) {
        return state.maybeMap(
          orElse: () => IconButton(
            onPressed: () {
              context
                  .read<UserActorBloc>()
                  .add(UserActorEvent.toggleFavorites(product.id.getOrCrash()));
            },
            icon: Icon(
              product.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border_outlined,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}

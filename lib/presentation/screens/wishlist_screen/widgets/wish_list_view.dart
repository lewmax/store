import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/injection.dart';
import 'package:multi_store/presentation/core/app_router.gr.dart';

import '../../../../application/auth/user/user_actor/user_actor_bloc.dart';
import '../../../../application/cart/cart_actor/cart_actor_bloc.dart';
import '../../../../application/tab_navigation/tab_navigation_cubit.dart';
import '../../../../domain/product/product.dart';

class WishListView extends StatelessWidget {
  final List<Product> products;

  const WishListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 50),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return WishlistItem(product: product);
      },
    );
  }
}

class WishlistItem extends StatelessWidget {
  const WishlistItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<AppRouter>().push(ProductScreenRoute(prod: product));
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Card(
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                    width: 120,
                    height: 100,
                    child: Image.network(
                      product.imageUrls[0].getOrCrash(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name.getOrCrash(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.price.getOrCrash().toStringAsFixed(2),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    context
                                        .read<UserActorBloc>()
                                        .add(UserActorEvent.toggleFavorites(
                                          product.id.getOrCrash(),
                                        ));
                                  },
                                  icon: const Icon(
                                    Icons.delete_forever,
                                    size: 22,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    context
                                        .read<CartActorBloc>()
                                        .add(CartActorEvent.addNewToCart(
                                          product,
                                        ));
                                    Navigator.of(context).pop();
                                    context
                                        .read<TabNavigationCubit>()
                                        .changeTabIndex(3);
                                  },
                                  icon: const Icon(
                                    Icons.add_shopping_cart,
                                    size: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

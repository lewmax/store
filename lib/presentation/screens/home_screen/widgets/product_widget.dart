import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/auth/auth_bloc.dart';
import 'package:multi_store/application/auth/user/user_actor/user_actor_bloc.dart';
import 'package:multi_store/injection.dart';
import 'package:multi_store/presentation/core/app_router.gr.dart';

import '../../../../domain/product/product.dart';

class ProductWidget extends StatelessWidget {
  final Product product;

  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.fit(
      crossAxisCellCount: 1,
      child: InkWell(
        onTap: () {
          getIt<AppRouter>().push(ProductScreenRoute(prod: product));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Material(
                borderRadius: BorderRadius.circular(15),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    fit: BoxFit.fitWidth,
                    product.imageUrls[0].getOrCrash(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      product.name.getOrCrash(),
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${product.price.getOrCrash().toStringAsFixed(2)} \$',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
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
                                  return heartIcon();
                                }
                              },
                              orElse: () => heartIcon(),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget heartIcon() {
    return BlocBuilder<UserActorBloc, UserActorState>(
      builder: (context, state) {
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/auth/auth_bloc.dart';
import 'package:multi_store/application/auth/user/user_actor/user_actor_bloc.dart';
import 'package:multi_store/application/auth/user/users_watcher/users_watcher_bloc.dart';
import 'package:multi_store/application/product/product_watcher/product_watcher_bloc.dart';
import 'package:multi_store/injection.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../domain/auth/user.dart';
import '../../home_screen/widgets/products_grid.dart';

class StoreScreen extends StatelessWidget {
  final String storeId;

  const StoreScreen({super.key, required this.storeId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.yellow),
        toolbarHeight: 100,
        flexibleSpace: Image.asset(
          'assets/images/inapp/coverimage.jpg',
          fit: BoxFit.cover,
        ),
        title: BlocBuilder<UsersWatcherBloc, UsersWatcherState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const Center(child: Text('Store not loaded')),
              initial: (_) => const Center(child: Text('init')),
              loadInProgress: (_) => const Center(child: Text('in progress')),
              loadFailure: (_) => const Center(child: Text('failure')),
              loadSuccess: (state) {
                final store = state.users.firstWhere(
                  (element) => element.id.getOrCrash() == storeId,
                );
                return buildAppBar(context, store);
              },
            );
          },
        ),
      ),
      body: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
        bloc: getIt<ProductWatcherBloc>()
          ..add(ProductWatcherEvent.watchBySupplierIdStarted(storeId)),
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
                  orElse: () =>
                      'Unexpected error occured while loading products',
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
      ),
    );
  }

  Widget buildAppBar(BuildContext context, User store) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          authenticatedSupplier: (state) {
            final currUser = state.user;
            return appBar(context, store, currUser);
          },
          authenticatedCustomer: (state) {
            final currUser = state.user;
            return appBar(context, store, currUser);
          },
          orElse: () => Container(),
        );
      },
    );
  }

  Widget appBar(BuildContext context, User store, User currUser) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(width: 4, color: Colors.yellow),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.5),
            child: Image.network(
              store.imageUrl.getOrCrash(),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  store.fullName.getOrCrash().toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                  ),
                ),
              ),
              store.id.getOrCrash() == currUser.id.getOrCrash()
                  ? buildEditStoreButton()
                  : buildFollowButton(context, store, currUser),
            ],
          ),
        )
      ],
    );
  }

  Widget buildFollowButton(BuildContext context, User store, User currUser) {
    print(store.isSubscribed);
    return MaterialButton(
      height: 35,
      minWidth: 30.w,
      color: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: const BorderSide(width: 3),
      ),
      onPressed: () {
        context
            .read<UserActorBloc>()
            .add(UserActorEvent.addToSubscriptions(storeId));
      },
      child: Text(store.isSubscribed ? 'UNFOLLOW' : 'FOLLOW'),
    );
  }

  Widget buildEditStoreButton() {
    return Container(
      height: 35,
      width: 30.w,
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(width: 3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text('Edit'),
            Icon(Icons.edit),
          ],
        ),
      ),
    );
  }
}

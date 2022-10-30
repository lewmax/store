import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/order/order_actor/order_actor_bloc.dart';
import 'package:multi_store/application/order/order_watcher/order_watcher_bloc.dart';
import 'package:multi_store/application/tab_navigation/tab_navigation_cubit.dart';
import 'package:sizer/sizer.dart';

import '../application/auth/auth_bloc.dart';
import '../application/auth/user/user_actor/user_actor_bloc.dart';
import '../application/auth/user/users_watcher/users_watcher_bloc.dart';
import '../application/cart/cart_actor/cart_actor_bloc.dart';
import '../application/cart/cart_watcher/cart_watcher_bloc.dart';
import '../application/product/favorite_product_watcher/favorite_product_watcher_bloc.dart';
import '../application/product/product_actor/product_actor_bloc.dart';
import '../application/product/product_watcher/product_watcher_bloc.dart';
import '../injection.dart';
import 'core/app_router.gr.dart';
import 'core/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(create: (_) => getIt<ProductWatcherBloc>()),
        BlocProvider(create: (_) => getIt<FavoriteProductWatcherBloc>()),
        BlocProvider(create: (_) => getIt<UsersWatcherBloc>()),
        BlocProvider(
          create: (_) =>
              getIt<CartWatcherBloc>()..add(const CartWatcherEvent.watch()),
        ),
        BlocProvider(create: (_) => getIt<OrderWatcherBloc>()),
        BlocProvider(create: (_) => getIt<ProductActorBloc>()),
        BlocProvider(create: (_) => getIt<UserActorBloc>()),
        BlocProvider(create: (_) => getIt<CartActorBloc>()),
        BlocProvider(create: (_) => getIt<OrderActorBloc>()),
        BlocProvider(create: (_) => getIt<TabNavigationCubit>()),
      ],
      child: LayoutBuilder(
        builder: (context, constraints) => OrientationBuilder(
          builder: (context, orientation) => Sizer(
            builder: (context, constraints, orientation) => MaterialApp.router(
              title: 'Shop',
              debugShowCheckedModeBanner: false,
              routerDelegate: getIt<AppRouter>().delegate(),
              routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
              theme: theme(),
            ),
          ),
        ),
      ),
    );
  }
}

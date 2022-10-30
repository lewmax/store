// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i25;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i22;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i23;
import 'application/auth/user/user_actor/user_actor_bloc.dart' as _i34;
import 'application/auth/user/users_watcher/users_watcher_bloc.dart' as _i35;
import 'application/cart/cart_actor/cart_actor_bloc.dart' as _i36;
import 'application/cart/cart_watcher/cart_watcher_bloc.dart' as _i26;
import 'application/order/order_actor/order_actor_bloc.dart' as _i29;
import 'application/order/order_form_bloc/order_form_bloc.dart' as _i30;
import 'application/order/order_watcher/order_watcher_bloc.dart' as _i20;
import 'application/product/favorite_product_watcher/favorite_product_watcher_bloc.dart'
    as _i37;
import 'application/product/product_actor/product_actor_bloc.dart' as _i31;
import 'application/product/product_form/product_form_bloc.dart' as _i32;
import 'application/product/product_search/product_search_bloc.dart' as _i21;
import 'application/product/product_watcher/product_watcher_bloc.dart' as _i33;
import 'application/tab_navigation/tab_navigation_cubit.dart' as _i24;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/auth/i_storage_service.dart' as _i16;
import 'domain/auth/i_user_repository.dart' as _i18;
import 'domain/cart/i_cart_repository.dart' as _i10;
import 'domain/order/i_order_repository.dart' as _i12;
import 'domain/order/i_payment_facade.dart' as _i14;
import 'domain/product/i_product_repository.dart' as _i27;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/auth/firestore_user_repository.dart' as _i19;
import 'infrastructure/auth/image_storage_service.dart' as _i17;
import 'infrastructure/cart/cart_repository.dart' as _i11;
import 'infrastructure/core/firestore_injectable_module.dart' as _i39;
import 'infrastructure/order/order_repository.dart' as _i13;
import 'infrastructure/order/stripe_payment_facade.dart' as _i15;
import 'infrastructure/product/product_repository.dart' as _i28;
import 'presentation/core/app_router.gr.dart' as _i3;
import 'presentation/core/router_injectable_module.dart'
    as _i38; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final routerInjectableModule = _$RouterInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AppRouter>(() => routerInjectableModule.router);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
        firebaseAuth: get<_i4.FirebaseAuth>(),
        googleSignIn: get<_i7.GoogleSignIn>(),
      ));
  gh.lazySingleton<_i10.ICartRepository>(
      () => _i11.CartRepository(firestore: get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IOrderRepository>(
      () => _i13.OrderRepository(firestore: get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IPaymentFacade>(() => _i15.StripePaymentFacade());
  gh.lazySingleton<_i16.IStorageService>(() =>
      _i17.ImageStorageService(firebaseStorage: get<_i6.FirebaseStorage>()));
  gh.lazySingleton<_i18.IUserRepository>(() =>
      _i19.FirestoreUserRepository(firestore: get<_i5.FirebaseFirestore>()));
  gh.singleton<_i20.OrderWatcherBloc>(
      _i20.OrderWatcherBloc(orderRepository: get<_i12.IOrderRepository>()));
  gh.factory<_i21.ProductSearchBloc>(() => _i21.ProductSearchBloc());
  gh.factory<_i22.SignInFormBloc>(
      () => _i22.SignInFormBloc(authFacade: get<_i8.IAuthFacade>()));
  gh.factory<_i23.SignUpFormBloc>(() => _i23.SignUpFormBloc(
        imageStorageService: get<_i16.IStorageService>(),
        authFacade: get<_i8.IAuthFacade>(),
        userRepository: get<_i18.IUserRepository>(),
      ));
  gh.factory<_i24.TabNavigationCubit>(() => _i24.TabNavigationCubit());
  gh.singleton<_i25.AuthBloc>(_i25.AuthBloc(
    authFacade: get<_i8.IAuthFacade>(),
    userRepository: get<_i18.IUserRepository>(),
  ));
  gh.singleton<_i26.CartWatcherBloc>(
      _i26.CartWatcherBloc(cartRepository: get<_i10.ICartRepository>()));
  gh.lazySingleton<_i27.IProductRepository>(() => _i28.ProductRepository(
        authFacade: get<_i8.IAuthFacade>(),
        userRepository: get<_i18.IUserRepository>(),
        firestore: get<_i5.FirebaseFirestore>(),
      ));
  gh.factory<_i29.OrderActorBloc>(() => _i29.OrderActorBloc(
        orderRepository: get<_i12.IOrderRepository>(),
        orderWatcherBloc: get<_i20.OrderWatcherBloc>(),
      ));
  gh.factory<_i30.OrderFormBloc>(() => _i30.OrderFormBloc(
        orderRepository: get<_i12.IOrderRepository>(),
        productRepository: get<_i27.IProductRepository>(),
        paymentFacade: get<_i14.IPaymentFacade>(),
      ));
  gh.factory<_i31.ProductActorBloc>(() =>
      _i31.ProductActorBloc(productRepository: get<_i27.IProductRepository>()));
  gh.factory<_i32.ProductFormBloc>(() => _i32.ProductFormBloc(
        productRepository: get<_i27.IProductRepository>(),
        imageStorageService: get<_i16.IStorageService>(),
      ));
  gh.factory<_i33.ProductWatcherBloc>(() => _i33.ProductWatcherBloc(
        authBloc: get<_i25.AuthBloc>(),
        productRepository: get<_i27.IProductRepository>(),
      ));
  gh.factory<_i34.UserActorBloc>(() => _i34.UserActorBloc(
        userRepository: get<_i18.IUserRepository>(),
        imageStorageService: get<_i16.IStorageService>(),
        authBloc: get<_i25.AuthBloc>(),
      ));
  gh.lazySingleton<_i35.UsersWatcherBloc>(() => _i35.UsersWatcherBloc(
        authBloc: get<_i25.AuthBloc>(),
        userRepository: get<_i18.IUserRepository>(),
      ));
  gh.factory<_i36.CartActorBloc>(() => _i36.CartActorBloc(
        cartWatcherBloc: get<_i26.CartWatcherBloc>(),
        cartRepository: get<_i10.ICartRepository>(),
      ));
  gh.factory<_i37.FavoriteProductWatcherBloc>(
      () => _i37.FavoriteProductWatcherBloc(
            productRepository: get<_i27.IProductRepository>(),
            authBloc: get<_i25.AuthBloc>(),
          ));
  return get;
}

class _$RouterInjectableModule extends _i38.RouterInjectableModule {}

class _$FirebaseInjectableModule extends _i39.FirebaseInjectableModule {}

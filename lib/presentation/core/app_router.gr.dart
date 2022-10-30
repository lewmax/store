// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;

import '../../domain/auth/value_objects.dart' as _i30;
import '../../domain/order/order.dart' as _i32;
import '../../domain/product/product.dart' as _i31;
import '../home/auto_tab_home.dart' as _i5;
import '../screens/cart_screen/cart_screen.dart' as _i24;
import '../screens/category_screen/category_screen.dart' as _i22;
import '../screens/category_screen/sub_screens/sub_category_screen.dart' as _i9;
import '../screens/checkout_screen/checkout_screen.dart' as _i17;
import '../screens/checkout_screen/sub_screens/select_payment_screen.dart'
    as _i19;
import '../screens/checkout_screen/sub_screens/user_info_screen.dart' as _i18;
import '../screens/dashboard_screen/dashboard_screen.dart' as _i26;
import '../screens/dashboard_screen/subscreens/edit_profile_screen.dart'
    as _i11;
import '../screens/dashboard_screen/subscreens/manage_products_screen.dart'
    as _i12;
import '../screens/dashboard_screen/subscreens/statistic_screen.dart' as _i14;
import '../screens/dashboard_screen/subscreens/supplier_balance_screen.dart'
    as _i13;
import '../screens/dashboard_screen/subscreens/supplier_orders_screen.dart'
    as _i10;
import '../screens/home_screen/home_screen.dart' as _i21;
import '../screens/home_screen/sub_screens/image_gallery_screen.dart' as _i7;
import '../screens/home_screen/sub_screens/product_screen.dart' as _i6;
import '../screens/orders_screen/orders_screen.dart' as _i15;
import '../screens/profile_screen/profile_screen.dart' as _i25;
import '../screens/profile_screen/sub_screens/edit_user_screen.dart' as _i20;
import '../screens/stores_screen/stores_screen.dart' as _i23;
import '../screens/stores_screen/sub_screens/store_screen.dart' as _i8;
import '../screens/upload_screen/upload_screen.dart' as _i27;
import '../screens/wishlist_screen/wishlist_screen.dart' as _i16;
import '../sign_in/sign_in_screen.dart' as _i4;
import '../sign_up/sign_up_screen.dart' as _i3;
import '../splash/splash_screen.dart' as _i1;
import '../welcome/welcome_screen.dart' as _i2;

class AppRouter extends _i28.RootStackRouter {
  AppRouter([_i29.GlobalKey<_i29.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    WelcomeScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.WelcomeScreen(),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpScreenRouteArgs>();
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignUpScreen(
          key: args.key,
          userType: args.userType,
        ),
      );
    },
    SignInScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SignInScreenRouteArgs>();
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SignInScreen(
          key: args.key,
          userType: args.userType,
        ),
      );
    },
    AutoTabHomeRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.AutoTabHome(),
      );
    },
    ProductScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProductScreenRouteArgs>();
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ProductScreen(
          key: args.key,
          prod: args.prod,
        ),
      );
    },
    ImageGalleryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ImageGalleryScreenRouteArgs>();
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ImageGalleryScreen(
          key: args.key,
          imageUrls: args.imageUrls,
        ),
      );
    },
    StoreScreenRoute.name: (routeData) {
      final args = routeData.argsAs<StoreScreenRouteArgs>();
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.StoreScreen(
          key: args.key,
          storeId: args.storeId,
        ),
      );
    },
    SubCategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SubCategoryScreenRouteArgs>();
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.SubCategoryScreen(
          key: args.key,
          mainCatName: args.mainCatName,
          subCatName: args.subCatName,
        ),
      );
    },
    SupplierOrdersScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SupplierOrdersScreen(),
      );
    },
    EditProfileScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.EditProfileScreen(),
      );
    },
    ManageProductsScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ManageProductsScreen(),
      );
    },
    SupplierBalanceScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SupplierBalanceScreen(),
      );
    },
    StatisticScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.StatisticScreen(),
      );
    },
    OrdersScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.OrdersScreen(),
      );
    },
    WishlistScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.WishlistScreen(),
      );
    },
    CheckoutScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutScreenRouteArgs>();
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i17.CheckoutScreen(
          key: args.key,
          order: args.order,
        ),
      );
    },
    UserInfoScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.UserInfoScreen(),
      );
    },
    SelectPaymentScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.SelectPaymentScreen(),
      );
    },
    EditUserScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.EditUserScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.HomeScreen(),
      );
    },
    CategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryScreenRouteArgs>(
          orElse: () => const CategoryScreenRouteArgs());
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i22.CategoryScreen(key: args.key),
      );
    },
    StoresScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.StoresScreen(),
      );
    },
    CartScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.CartScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.ProfileScreen(),
      );
    },
    DashboardScreenRoute.name: (routeData) {
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.DashboardScreen(),
      );
    },
    UploadScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UploadScreenRouteArgs>(
          orElse: () => const UploadScreenRouteArgs());
      return _i28.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i27.UploadScreen(
          key: args.key,
          product: args.product,
        ),
      );
    },
  };

  @override
  List<_i28.RouteConfig> get routes => [
        _i28.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i28.RouteConfig(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        ),
        _i28.RouteConfig(
          SignUpScreenRoute.name,
          path: '/sign-up-screen',
        ),
        _i28.RouteConfig(
          SignInScreenRoute.name,
          path: '/sign-in-screen',
        ),
        _i28.RouteConfig(
          AutoTabHomeRoute.name,
          path: '/auto-tab-home',
          children: [
            _i28.RouteConfig(
              HomeScreenRoute.name,
              path: 'home-screen',
              parent: AutoTabHomeRoute.name,
            ),
            _i28.RouteConfig(
              CategoryScreenRoute.name,
              path: 'category-screen',
              parent: AutoTabHomeRoute.name,
            ),
            _i28.RouteConfig(
              StoresScreenRoute.name,
              path: 'stores-screen',
              parent: AutoTabHomeRoute.name,
            ),
            _i28.RouteConfig(
              CartScreenRoute.name,
              path: 'cart-screen',
              parent: AutoTabHomeRoute.name,
            ),
            _i28.RouteConfig(
              ProfileScreenRoute.name,
              path: 'profile-screen',
              parent: AutoTabHomeRoute.name,
            ),
            _i28.RouteConfig(
              DashboardScreenRoute.name,
              path: 'dashboard-screen',
              parent: AutoTabHomeRoute.name,
            ),
            _i28.RouteConfig(
              UploadScreenRoute.name,
              path: 'upload-screen',
              parent: AutoTabHomeRoute.name,
            ),
          ],
        ),
        _i28.RouteConfig(
          ProductScreenRoute.name,
          path: '/product-screen',
        ),
        _i28.RouteConfig(
          ImageGalleryScreenRoute.name,
          path: '/image-gallery-screen',
        ),
        _i28.RouteConfig(
          StoreScreenRoute.name,
          path: '/store-screen',
        ),
        _i28.RouteConfig(
          SubCategoryScreenRoute.name,
          path: '/sub-category-screen',
        ),
        _i28.RouteConfig(
          SupplierOrdersScreenRoute.name,
          path: '/supplier-orders-screen',
        ),
        _i28.RouteConfig(
          EditProfileScreenRoute.name,
          path: '/edit-profile-screen',
        ),
        _i28.RouteConfig(
          ManageProductsScreenRoute.name,
          path: '/manage-products-screen',
        ),
        _i28.RouteConfig(
          SupplierBalanceScreenRoute.name,
          path: '/supplier-balance-screen',
        ),
        _i28.RouteConfig(
          StatisticScreenRoute.name,
          path: '/statistic-screen',
        ),
        _i28.RouteConfig(
          OrdersScreenRoute.name,
          path: '/orders-screen',
        ),
        _i28.RouteConfig(
          WishlistScreenRoute.name,
          path: '/wishlist-screen',
        ),
        _i28.RouteConfig(
          CheckoutScreenRoute.name,
          path: '/checkout-screen',
        ),
        _i28.RouteConfig(
          UserInfoScreenRoute.name,
          path: '/user-info-screen',
        ),
        _i28.RouteConfig(
          SelectPaymentScreenRoute.name,
          path: '/select-payment-screen',
        ),
        _i28.RouteConfig(
          EditUserScreenRoute.name,
          path: '/edit-user-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i28.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeScreenRoute extends _i28.PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(
          WelcomeScreenRoute.name,
          path: '/welcome-screen',
        );

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i3.SignUpScreen]
class SignUpScreenRoute extends _i28.PageRouteInfo<SignUpScreenRouteArgs> {
  SignUpScreenRoute({
    _i29.Key? key,
    required _i30.UserType userType,
  }) : super(
          SignUpScreenRoute.name,
          path: '/sign-up-screen',
          args: SignUpScreenRouteArgs(
            key: key,
            userType: userType,
          ),
        );

  static const String name = 'SignUpScreenRoute';
}

class SignUpScreenRouteArgs {
  const SignUpScreenRouteArgs({
    this.key,
    required this.userType,
  });

  final _i29.Key? key;

  final _i30.UserType userType;

  @override
  String toString() {
    return 'SignUpScreenRouteArgs{key: $key, userType: $userType}';
  }
}

/// generated route for
/// [_i4.SignInScreen]
class SignInScreenRoute extends _i28.PageRouteInfo<SignInScreenRouteArgs> {
  SignInScreenRoute({
    _i29.Key? key,
    required _i30.UserType userType,
  }) : super(
          SignInScreenRoute.name,
          path: '/sign-in-screen',
          args: SignInScreenRouteArgs(
            key: key,
            userType: userType,
          ),
        );

  static const String name = 'SignInScreenRoute';
}

class SignInScreenRouteArgs {
  const SignInScreenRouteArgs({
    this.key,
    required this.userType,
  });

  final _i29.Key? key;

  final _i30.UserType userType;

  @override
  String toString() {
    return 'SignInScreenRouteArgs{key: $key, userType: $userType}';
  }
}

/// generated route for
/// [_i5.AutoTabHome]
class AutoTabHomeRoute extends _i28.PageRouteInfo<void> {
  const AutoTabHomeRoute({List<_i28.PageRouteInfo>? children})
      : super(
          AutoTabHomeRoute.name,
          path: '/auto-tab-home',
          initialChildren: children,
        );

  static const String name = 'AutoTabHomeRoute';
}

/// generated route for
/// [_i6.ProductScreen]
class ProductScreenRoute extends _i28.PageRouteInfo<ProductScreenRouteArgs> {
  ProductScreenRoute({
    _i29.Key? key,
    required _i31.Product prod,
  }) : super(
          ProductScreenRoute.name,
          path: '/product-screen',
          args: ProductScreenRouteArgs(
            key: key,
            prod: prod,
          ),
        );

  static const String name = 'ProductScreenRoute';
}

class ProductScreenRouteArgs {
  const ProductScreenRouteArgs({
    this.key,
    required this.prod,
  });

  final _i29.Key? key;

  final _i31.Product prod;

  @override
  String toString() {
    return 'ProductScreenRouteArgs{key: $key, prod: $prod}';
  }
}

/// generated route for
/// [_i7.ImageGalleryScreen]
class ImageGalleryScreenRoute
    extends _i28.PageRouteInfo<ImageGalleryScreenRouteArgs> {
  ImageGalleryScreenRoute({
    _i29.Key? key,
    required List<_i30.ImageUrl> imageUrls,
  }) : super(
          ImageGalleryScreenRoute.name,
          path: '/image-gallery-screen',
          args: ImageGalleryScreenRouteArgs(
            key: key,
            imageUrls: imageUrls,
          ),
        );

  static const String name = 'ImageGalleryScreenRoute';
}

class ImageGalleryScreenRouteArgs {
  const ImageGalleryScreenRouteArgs({
    this.key,
    required this.imageUrls,
  });

  final _i29.Key? key;

  final List<_i30.ImageUrl> imageUrls;

  @override
  String toString() {
    return 'ImageGalleryScreenRouteArgs{key: $key, imageUrls: $imageUrls}';
  }
}

/// generated route for
/// [_i8.StoreScreen]
class StoreScreenRoute extends _i28.PageRouteInfo<StoreScreenRouteArgs> {
  StoreScreenRoute({
    _i29.Key? key,
    required String storeId,
  }) : super(
          StoreScreenRoute.name,
          path: '/store-screen',
          args: StoreScreenRouteArgs(
            key: key,
            storeId: storeId,
          ),
        );

  static const String name = 'StoreScreenRoute';
}

class StoreScreenRouteArgs {
  const StoreScreenRouteArgs({
    this.key,
    required this.storeId,
  });

  final _i29.Key? key;

  final String storeId;

  @override
  String toString() {
    return 'StoreScreenRouteArgs{key: $key, storeId: $storeId}';
  }
}

/// generated route for
/// [_i9.SubCategoryScreen]
class SubCategoryScreenRoute
    extends _i28.PageRouteInfo<SubCategoryScreenRouteArgs> {
  SubCategoryScreenRoute({
    _i29.Key? key,
    required String mainCatName,
    required String subCatName,
  }) : super(
          SubCategoryScreenRoute.name,
          path: '/sub-category-screen',
          args: SubCategoryScreenRouteArgs(
            key: key,
            mainCatName: mainCatName,
            subCatName: subCatName,
          ),
        );

  static const String name = 'SubCategoryScreenRoute';
}

class SubCategoryScreenRouteArgs {
  const SubCategoryScreenRouteArgs({
    this.key,
    required this.mainCatName,
    required this.subCatName,
  });

  final _i29.Key? key;

  final String mainCatName;

  final String subCatName;

  @override
  String toString() {
    return 'SubCategoryScreenRouteArgs{key: $key, mainCatName: $mainCatName, subCatName: $subCatName}';
  }
}

/// generated route for
/// [_i10.SupplierOrdersScreen]
class SupplierOrdersScreenRoute extends _i28.PageRouteInfo<void> {
  const SupplierOrdersScreenRoute()
      : super(
          SupplierOrdersScreenRoute.name,
          path: '/supplier-orders-screen',
        );

  static const String name = 'SupplierOrdersScreenRoute';
}

/// generated route for
/// [_i11.EditProfileScreen]
class EditProfileScreenRoute extends _i28.PageRouteInfo<void> {
  const EditProfileScreenRoute()
      : super(
          EditProfileScreenRoute.name,
          path: '/edit-profile-screen',
        );

  static const String name = 'EditProfileScreenRoute';
}

/// generated route for
/// [_i12.ManageProductsScreen]
class ManageProductsScreenRoute extends _i28.PageRouteInfo<void> {
  const ManageProductsScreenRoute()
      : super(
          ManageProductsScreenRoute.name,
          path: '/manage-products-screen',
        );

  static const String name = 'ManageProductsScreenRoute';
}

/// generated route for
/// [_i13.SupplierBalanceScreen]
class SupplierBalanceScreenRoute extends _i28.PageRouteInfo<void> {
  const SupplierBalanceScreenRoute()
      : super(
          SupplierBalanceScreenRoute.name,
          path: '/supplier-balance-screen',
        );

  static const String name = 'SupplierBalanceScreenRoute';
}

/// generated route for
/// [_i14.StatisticScreen]
class StatisticScreenRoute extends _i28.PageRouteInfo<void> {
  const StatisticScreenRoute()
      : super(
          StatisticScreenRoute.name,
          path: '/statistic-screen',
        );

  static const String name = 'StatisticScreenRoute';
}

/// generated route for
/// [_i15.OrdersScreen]
class OrdersScreenRoute extends _i28.PageRouteInfo<void> {
  const OrdersScreenRoute()
      : super(
          OrdersScreenRoute.name,
          path: '/orders-screen',
        );

  static const String name = 'OrdersScreenRoute';
}

/// generated route for
/// [_i16.WishlistScreen]
class WishlistScreenRoute extends _i28.PageRouteInfo<void> {
  const WishlistScreenRoute()
      : super(
          WishlistScreenRoute.name,
          path: '/wishlist-screen',
        );

  static const String name = 'WishlistScreenRoute';
}

/// generated route for
/// [_i17.CheckoutScreen]
class CheckoutScreenRoute extends _i28.PageRouteInfo<CheckoutScreenRouteArgs> {
  CheckoutScreenRoute({
    _i29.Key? key,
    required _i32.Order order,
  }) : super(
          CheckoutScreenRoute.name,
          path: '/checkout-screen',
          args: CheckoutScreenRouteArgs(
            key: key,
            order: order,
          ),
        );

  static const String name = 'CheckoutScreenRoute';
}

class CheckoutScreenRouteArgs {
  const CheckoutScreenRouteArgs({
    this.key,
    required this.order,
  });

  final _i29.Key? key;

  final _i32.Order order;

  @override
  String toString() {
    return 'CheckoutScreenRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i18.UserInfoScreen]
class UserInfoScreenRoute extends _i28.PageRouteInfo<void> {
  const UserInfoScreenRoute()
      : super(
          UserInfoScreenRoute.name,
          path: '/user-info-screen',
        );

  static const String name = 'UserInfoScreenRoute';
}

/// generated route for
/// [_i19.SelectPaymentScreen]
class SelectPaymentScreenRoute extends _i28.PageRouteInfo<void> {
  const SelectPaymentScreenRoute()
      : super(
          SelectPaymentScreenRoute.name,
          path: '/select-payment-screen',
        );

  static const String name = 'SelectPaymentScreenRoute';
}

/// generated route for
/// [_i20.EditUserScreen]
class EditUserScreenRoute extends _i28.PageRouteInfo<void> {
  const EditUserScreenRoute()
      : super(
          EditUserScreenRoute.name,
          path: '/edit-user-screen',
        );

  static const String name = 'EditUserScreenRoute';
}

/// generated route for
/// [_i21.HomeScreen]
class HomeScreenRoute extends _i28.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: 'home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i22.CategoryScreen]
class CategoryScreenRoute extends _i28.PageRouteInfo<CategoryScreenRouteArgs> {
  CategoryScreenRoute({_i29.Key? key})
      : super(
          CategoryScreenRoute.name,
          path: 'category-screen',
          args: CategoryScreenRouteArgs(key: key),
        );

  static const String name = 'CategoryScreenRoute';
}

class CategoryScreenRouteArgs {
  const CategoryScreenRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'CategoryScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i23.StoresScreen]
class StoresScreenRoute extends _i28.PageRouteInfo<void> {
  const StoresScreenRoute()
      : super(
          StoresScreenRoute.name,
          path: 'stores-screen',
        );

  static const String name = 'StoresScreenRoute';
}

/// generated route for
/// [_i24.CartScreen]
class CartScreenRoute extends _i28.PageRouteInfo<void> {
  const CartScreenRoute()
      : super(
          CartScreenRoute.name,
          path: 'cart-screen',
        );

  static const String name = 'CartScreenRoute';
}

/// generated route for
/// [_i25.ProfileScreen]
class ProfileScreenRoute extends _i28.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile-screen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i26.DashboardScreen]
class DashboardScreenRoute extends _i28.PageRouteInfo<void> {
  const DashboardScreenRoute()
      : super(
          DashboardScreenRoute.name,
          path: 'dashboard-screen',
        );

  static const String name = 'DashboardScreenRoute';
}

/// generated route for
/// [_i27.UploadScreen]
class UploadScreenRoute extends _i28.PageRouteInfo<UploadScreenRouteArgs> {
  UploadScreenRoute({
    _i29.Key? key,
    _i31.Product? product,
  }) : super(
          UploadScreenRoute.name,
          path: 'upload-screen',
          args: UploadScreenRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'UploadScreenRoute';
}

class UploadScreenRouteArgs {
  const UploadScreenRouteArgs({
    this.key,
    this.product,
  });

  final _i29.Key? key;

  final _i31.Product? product;

  @override
  String toString() {
    return 'UploadScreenRouteArgs{key: $key, product: $product}';
  }
}

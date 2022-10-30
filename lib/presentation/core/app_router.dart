import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../home/auto_tab_home.dart';
import '../screens/cart_screen/cart_screen.dart';
import '../screens/category_screen/category_screen.dart';
import '../screens/category_screen/sub_screens/sub_category_screen.dart';
import '../screens/checkout_screen/checkout_screen.dart';
import '../screens/checkout_screen/sub_screens/select_payment_screen.dart';
import '../screens/checkout_screen/sub_screens/user_info_screen.dart';
import '../screens/dashboard_screen/dashboard_screen.dart';
import '../screens/dashboard_screen/subscreens/edit_profile_screen.dart';
import '../screens/dashboard_screen/subscreens/manage_products_screen.dart';
import '../screens/dashboard_screen/subscreens/statistic_screen.dart';
import '../screens/dashboard_screen/subscreens/supplier_balance_screen.dart';
import '../screens/dashboard_screen/subscreens/supplier_orders_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/home_screen/sub_screens/image_gallery_screen.dart';
import '../screens/home_screen/sub_screens/product_screen.dart';
import '../screens/profile_screen/sub_screens/edit_user_screen.dart';
import '../screens/stores_screen/sub_screens/store_screen.dart';
import '../screens/orders_screen/orders_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/stores_screen/stores_screen.dart';
import '../screens/upload_screen/upload_screen.dart';
import '../screens/wishlist_screen/wishlist_screen.dart';
import '../sign_in/sign_in_screen.dart';
import '../sign_up/sign_up_screen.dart';
import '../splash/splash_screen.dart';
import '../welcome/welcome_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: WelcomeScreen),
    AutoRoute(page: SignUpScreen),
    AutoRoute(page: SignInScreen),
    AutoRoute(
      page: AutoTabHome,
      children: [
        AutoRoute(page: HomeScreen),
        AutoRoute(page: CategoryScreen),
        AutoRoute(page: StoresScreen),
        AutoRoute(page: CartScreen),
        AutoRoute(page: ProfileScreen),
        AutoRoute(page: DashboardScreen),
        AutoRoute(page: UploadScreen),
      ],
    ),

    AutoRoute(page: ProductScreen),
    AutoRoute(page: ImageGalleryScreen),
    AutoRoute(page: StoreScreen),
    AutoRoute(page: SubCategoryScreen),
    AutoRoute(page: SupplierOrdersScreen),
    AutoRoute(page: EditProfileScreen),
    AutoRoute(page: ManageProductsScreen),
    AutoRoute(page: SupplierBalanceScreen),
    AutoRoute(page: StatisticScreen),
    AutoRoute(page: OrdersScreen),
    AutoRoute(page: WishlistScreen),
    AutoRoute(page: CheckoutScreen),
    AutoRoute(page: UserInfoScreen),
    AutoRoute(page: SelectPaymentScreen),
    AutoRoute(page: EditUserScreen),
  ],
)
class $AppRouter {}

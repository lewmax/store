import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/presentation/core/app_router.gr.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/tab_navigation/tab_navigation_cubit.dart';
import '../../domain/auth/value_objects.dart';
import '../../injection.dart';

class AutoTabHome extends StatelessWidget {
  const AutoTabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) =>
              getIt<AppRouter>().push(const WelcomeScreenRoute()),
          orElse: () {},
        );
      },
      builder: (context, state) {
        final userType = state.maybeMap(
          authenticatedSupplier: (_) => UserTypeEnum.supplier,
          authenticatedCustomer: (_) => UserTypeEnum.customer,
          orElse: () => UserTypeEnum.customer,
        );
        print(userType);
        return AutoTabsScaffold(
          routes: [
            const HomeScreenRoute(),
            CategoryScreenRoute(),
            const StoresScreenRoute(),
            if (userType == UserTypeEnum.customer) ...[
              const CartScreenRoute(),
              const ProfileScreenRoute(),
            ],
            if (userType == UserTypeEnum.supplier) ...[
              const DashboardScreenRoute(),
              UploadScreenRoute(),
            ],
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BlocConsumer<TabNavigationCubit, int>(
              listener: (context, state) {
                tabsRouter.setActiveIndex(state);
              },
              builder: (context, state) {
                return BottomNavigationBar(
                  currentIndex: state,
                  onTap: (index) {
                    context.read<TabNavigationCubit>().changeTabIndex(index);
                  },
                  selectedItemColor: Colors.black,
                  type: BottomNavigationBarType.fixed,
                  selectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.bold),
                  items: [
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Category',
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(Icons.shop),
                      label: 'Stores',
                    ),
                    if (userType == UserTypeEnum.customer) ...[
                      const BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart),
                        label: 'Cart',
                      ),
                      const BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: 'Profile',
                      ),
                    ],
                    if (userType == UserTypeEnum.supplier) ...[
                      const BottomNavigationBarItem(
                        icon: Icon(Icons.dashboard),
                        label: 'Dashboard',
                      ),
                      const BottomNavigationBarItem(
                        icon: Icon(Icons.upload),
                        label: 'Upload',
                      ),
                    ],
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}

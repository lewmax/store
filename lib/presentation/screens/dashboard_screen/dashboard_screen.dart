import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import '../../core/app_router.gr.dart';
import 'widgets/dashboard_button.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100.withOpacity(0.5),
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blueGrey.shade100.withOpacity(0.5),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Alert'),
                  content: const Text('Are you sure?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signedOut());
                      },
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('No'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.logout),
            color: Colors.black,
          )
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
        ),
        padding: const EdgeInsets.all(30),
        children: [
          DashboardButton(
            icon: Icons.store,
            title: 'MY STORE',
            function: () {
              final myStoreId = context.read<AuthBloc>().state.maybeMap(
                    authenticatedCustomer: (state) =>
                        state.user.id.getOrCrash(),
                    authenticatedSupplier: (state) =>
                        state.user.id.getOrCrash(),
                    orElse: () {},
                  );
              getIt<AppRouter>().push(
                StoreScreenRoute(storeId: myStoreId!),
              );
            },
          ),
          DashboardButton(
            icon: Icons.shop_2,
            title: 'ORDERS',
            function: () {
              getIt<AppRouter>().push(const SupplierOrdersScreenRoute());
            },
          ),
          DashboardButton(
            icon: Icons.edit,
            title: 'EDIT PROFILE',
            function: () {
              getIt<AppRouter>().push(const EditProfileScreenRoute());
            },
          ),
          DashboardButton(
            icon: Icons.settings,
            title: 'MANAGE PRODUCTS',
            function: () {
              getIt<AppRouter>().push(const ManageProductsScreenRoute());
            },
          ),
          DashboardButton(
            icon: Icons.attach_money,
            title: 'BALANCE',
            function: () {
              getIt<AppRouter>().push(const SupplierBalanceScreenRoute());
            },
          ),
          DashboardButton(
            icon: Icons.show_chart,
            title: 'STATISTIC',
            function: () {
              getIt<AppRouter>().push(const StatisticScreenRoute());
            },
          ),
        ],
      ),
    );
  }
}

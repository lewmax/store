import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/injection.dart';
import 'package:multi_store/presentation/core/app_router.gr.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/tab_navigation/tab_navigation_cubit.dart';
import '../../../../domain/auth/user.dart';
import '../../home_screen/widgets/divider_widget.dart';
import 'profile_button_widget.dart';
import 'profile_section_widget.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const SizedBox(width: 5),
                Expanded(
                  child: ProfileButtonWidget(
                    label: 'Cart',
                    radiusLeft: true,
                    onTap: () {
                      context.read<TabNavigationCubit>().changeTabIndex(3);
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ProfileButtonWidget(
                    label: 'Orders',
                    color: Colors.black54,
                    bgColor: Colors.yellow,
                    onTap: () {
                      getIt<AppRouter>().push(const OrdersScreenRoute());
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ProfileButtonWidget(
                    label: 'Wishlist',
                    radiusRight: true,
                    onTap: () {
                      getIt<AppRouter>().push(const WishlistScreenRoute());
                    },
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeMap(
                  authenticatedSupplier: (state) =>
                      _buildUserInfo(state.user, context),
                  authenticatedCustomer: (state) =>
                      _buildUserInfo(state.user, context),
                  orElse: () => Container(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Column _buildUserInfo(User user, BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: Image.asset('assets/images/inapp/logo.jpg'),
        ),
        const DividerWidget(label: '  Account Info  ', color: Colors.grey),
        ProfileSectionWidget(
          label1: 'Email Address',
          subTitle1: user.emailAddress.getOrCrash(),
          icon1: Icons.email,
          label2: 'Phone Number',
          subTitle2: user.phone,
          icon2: Icons.phone,
          label3: 'Address',
          subTitle3: user.address,
          icon3: Icons.location_pin,
        ),
        const DividerWidget(label: '  Account Settings  ', color: Colors.grey),
        ProfileSectionWidget(
          label1: 'Edit Profile',
          icon1: Icons.edit,
          function1: () {
            getIt<AppRouter>().push(const EditUserScreenRoute());
          },
          label2: 'Change Password',
          icon2: Icons.lock,
          function2: () {},
          label3: 'Log Out',
          icon3: Icons.logout,
          function3: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Alert'),
                content: const Text('Are you sure?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEvent.signedOut());
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
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/auth/auth_bloc.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      expandedHeight: 140,
      flexibleSpace: LayoutBuilder(
        builder: (context, constrains) {
          return FlexibleSpaceBar(
            centerTitle: true,
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: constrains.biggest.height <= 120 ? 1 : 0,
              child: const Text(
                'Profile',
                style: TextStyle(color: Colors.black),
              ),
            ),
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.brown],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) => state.maybeMap(
                    authenticatedSupplier: (state) => buildCircleAvatar(
                      state.user.imageUrl.getOrCrash(),
                      state.user.fullName.getOrCrash(),
                    ),
                    authenticatedCustomer: (state) => buildCircleAvatar(
                      state.user.imageUrl.getOrCrash(),
                      state.user.fullName.getOrCrash(),
                    ),
                    orElse: () => Container(),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildCircleAvatar(String imageUrl, String name) {
    return Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

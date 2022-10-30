import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../injection.dart';
import '../core/app_router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            print('Initial');
            // sl<AppRouter>().replaceNamed('/');
          },
          authenticatedSupplier: (_) {
            print('I am Authenticated as Supplier!');
            getIt<AppRouter>().replace(const AutoTabHomeRoute());
          },
          authenticatedCustomer: (_) {
            print('I am Authenticated as Customer!');
            getIt<AppRouter>().replace(const AutoTabHomeRoute());
            ///push and remove until
          },
          unauthenticated: (_) {
            print('I am Unauthenticated!');
            getIt<AppRouter>().replace(const WelcomeScreenRoute());
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

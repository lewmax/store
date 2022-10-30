import 'package:flutter/material.dart';
import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:sizer/sizer.dart';

import '../../injection.dart';
import '../core/app_router.gr.dart';
import 'widgets/welcome_animated_image.dart';
import 'widgets/welcome_button.dart';
import 'widgets/welcome_row.dart';
import 'widgets/welcome_sign_up_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.yellow, Colors.brown],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 15.h),
              const Center(
                child: Text(
                  'Shop',
                  style: TextStyle(fontSize: 50, color: Colors.black54),
                ),
              ),
              const WelcomeRow(
                isLeft: false,
                children: [
                  Text(
                    'For Customers',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              WelcomeRow(
                isLeft: false,
                children: [
                  const WelcomeAnimatedImage(),
                  WelcomeButton(
                    title: 'Log In',
                    onPressed: () {
                      getIt<AppRouter>().push(
                        SignInScreenRoute(
                          userType: UserType(UserTypeEnum.customer),
                        ),
                      );
                    },
                  ),
                  WelcomeButton(
                    title: 'Sign Up',
                    onPressed: () {
                      getIt<AppRouter>().push(
                        SignUpScreenRoute(
                          userType: UserType(UserTypeEnum.customer),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const WelcomeRow(
                isLeft: true,
                children: [
                  Text(
                    'For Suppliers',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              WelcomeRow(
                isLeft: true,
                children: [
                  WelcomeButton(
                    title: 'Log In',
                    onPressed: () {
                      getIt<AppRouter>().push(
                        SignInScreenRoute(
                          userType: UserType(UserTypeEnum.supplier),
                        ),
                      );
                    },
                  ),
                  WelcomeButton(
                    title: 'Sign Up',
                    onPressed: () {
                      getIt<AppRouter>().push(
                        SignUpScreenRoute(
                          userType: UserType(UserTypeEnum.supplier),
                        ),
                      );
                    },
                  ),
                  const WelcomeAnimatedImage(),
                ],
              ),
              const SizedBox(height: 10),
              const SignUpRowWidget(),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}

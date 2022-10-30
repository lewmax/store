import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:multi_store/injection.dart';
import 'package:multi_store/presentation/sign_up/widgets/sign_up_form.dart';

import '../../domain/auth/value_objects.dart';

class SignUpScreen extends StatelessWidget {
  final UserType userType;

  const SignUpScreen({Key? key, required this.userType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: BlocProvider(
        create: (_) => getIt<SignUpFormBloc>(),
        child: SignUpForm(userType),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:multi_store/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:multi_store/domain/auth/value_objects.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import '../../core/app_router.gr.dart';
import '../../core/input_decoration.dart';
import 'image_picker_widget.dart';

class SignUpForm extends HookWidget {
  final UserType userType;

  const SignUpForm(this.userType, {super.key});

  @override
  Widget build(BuildContext context) {
    final showPassState = useState(true);

    return BlocListener<SignUpFormBloc, SignUpFormState>(
      listenWhen: (oldState, newState) =>
          oldState.isSubmitting != newState.isSubmitting,
      listener: (context, state) {
        state.logoImage.value.fold(
          (f) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Image is empty'),
                duration: Duration(seconds: 1),
              ),
            );
          },
          (_) {},
        );
      },
      child: BlocConsumer<SignUpFormBloc, SignUpFormState>(
        listener: (context, state) {
          state.authFailureOrSuccess?.fold(
            (failure) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: failure.maybeMap(
                    serverError: (_) => const Text('Server Error'),
                    emailAlreadyInUse: (_) =>
                        const Text('Email already in use'),
                    orElse: () => const Text('Something went wrong'),
                  ),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            (r) {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              getIt<AppRouter>().pushAndPopUntil(
                const AutoTabHomeRoute(),
                predicate: (_) => false,
              );
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Signed in'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Center(
              child: SingleChildScrollView(
                reverse: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    signUpTitle(context),
                    const ImagePickerWidget(),
                    nameField(context),
                    emailField(context),
                    passwordField(context, showPassState),
                    alreadyButton(context),
                    buildSubmitButton(context),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget signUpTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.home_work,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }

  Widget nameField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: TextFieldDecoration.authFieldDecoration.copyWith(
          labelText: 'Full Name',
          hintText: 'Enter your full name',
          prefixIcon: const Icon(Icons.person),
        ),
        autocorrect: false,
        onChanged: (value) => context
            .read<SignUpFormBloc>()
            .add(SignUpFormEvent.fullNameChanged(value)),
        validator: (_) {
          return context.watch<SignUpFormBloc>().state.fullName.value.fold(
                (f) => f.maybeMap(
                  invalidFullName: (_) => 'Invalid Full Name',
                  orElse: () => null,
                ),
                (_) => null,
              );
        },
      ),
    );
  }

  Widget emailField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: TextFieldDecoration.authFieldDecoration,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        onChanged: (value) => context
            .read<SignUpFormBloc>()
            .add(SignUpFormEvent.emailChanged(value)),
        validator: (_) {
          return context.watch<SignUpFormBloc>().state.emailAddress.value.fold(
                (f) => f.maybeMap(
                  invalidEmail: (_) => 'Invalid Email',
                  orElse: () => null,
                ),
                (_) => null,
              );
        },
      ),
    );
  }

  Widget passwordField(
      BuildContext context, ValueNotifier<bool> showPassState) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: TextFieldDecoration.authFieldDecoration.copyWith(
          suffixIcon: IconButton(
            onPressed: () {
              showPassState.value = !showPassState.value;
            },
            icon: Icon(
              showPassState.value ? Icons.visibility_off : Icons.visibility,
              color: Colors.purple,
            ),
          ),
          labelText: 'Password',
          hintText: 'Enter your password',
          prefixIcon: const Icon(Icons.lock),
        ),
        obscureText: showPassState.value,
        autocorrect: false,
        onChanged: (value) => context
            .read<SignUpFormBloc>()
            .add(SignUpFormEvent.passwordChanged(value)),
        validator: (_) {
          return context.watch<SignUpFormBloc>().state.password.value.fold(
                (f) => f.maybeMap(
                  invalidPassword: (_) => 'Invalid Password',
                  orElse: () => null,
                ),
                (_) => null,
              );
        },
      ),
    );
  }

  Widget alreadyButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'Already have an account?',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
        ),
        TextButton(
          onPressed: () {
            getIt<AppRouter>()
                .popAndPush(SignInScreenRoute(userType: userType));
          },
          child: const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 20,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSubmitButton(BuildContext context) {
    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      builder: (context, state) {
        if (state.isSubmitting) {
          return const CircularProgressIndicator();
        } else {
          return MaterialButton(
            color: Colors.purple,
            disabledColor: Colors.grey.shade400,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            minWidth: double.infinity,
            onPressed: () {
              context.read<SignUpFormBloc>().add(
                    SignUpFormEvent.signUpWithEmailAndPasswordPressed(userType),
                  );
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          );
        }
      },
    );
  }
}

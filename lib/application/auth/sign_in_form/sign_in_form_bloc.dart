import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

@Injectable()
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade authFacade;

  SignInFormBloc({required this.authFacade})
      : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) {
          emit(state.copyWith(
            emailAddress: EmailAddress(e.emailStr),
            authFailureOrSuccess: null,
          ));
        },
        passwordChanged: (e) {
          emit(state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccess: null,
          ));
        },
        signInWithEmailAndPasswordPressed: (e) async {
          Either<AuthFailure, Unit>? failureOrSuccess;

          final emailValid = state.emailAddress.isValid();
          final passwordValid = state.password.isValid();

          if (emailValid && passwordValid) {
            emit(state.copyWith(
              authFailureOrSuccess: null,
              isSubmitting: true,
            ));
            failureOrSuccess = await authFacade.signInWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
          }

          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccess: failureOrSuccess,
          ));
        },
      );
    });
  }
}

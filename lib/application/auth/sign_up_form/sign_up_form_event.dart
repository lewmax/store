part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.logoImageChanged(File imageFile) =
      _LogoImageChanged;

  const factory SignUpFormEvent.fullNameChanged(String fullNameStr) =
      _FullNameChanged;

  const factory SignUpFormEvent.emailChanged(String emailStr) = _EmailChanged;

  const factory SignUpFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;

  const factory SignUpFormEvent.signUpWithEmailAndPasswordPressed(
    UserType userType,
  ) = _SignUpWithEmailAndPasswordPressed;
}

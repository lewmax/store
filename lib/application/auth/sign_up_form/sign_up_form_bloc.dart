import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_store/domain/auth/i_user_repository.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/i_storage_service.dart';
import '../../../domain/auth/user.dart';
import '../../../domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_bloc.freezed.dart';

part 'sign_up_form_event.dart';

part 'sign_up_form_state.dart';

@Injectable()
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade authFacade;
  final IUserRepository userRepository;
  final IStorageService imageStorageService;

  SignUpFormBloc({
    required this.imageStorageService,
    required this.authFacade,
    required this.userRepository,
  }) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>((event, emit) async {
      await event.map(
        logoImageChanged: (e) {
          emit(state.copyWith(
            logoImage: LogoImage(e.imageFile),
            authFailureOrSuccess: null,
          ));
        },
        fullNameChanged: (e) {
          emit(state.copyWith(
            fullName: FullName(e.fullNameStr),
            authFailureOrSuccess: null,
          ));
        },
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
        signUpWithEmailAndPasswordPressed: (e) async {
          Either<AuthFailure, Unit>? failureOrSuccess;

          final logoImageValid = state.logoImage.isValid();
          final fullNameValid = state.fullName.isValid();
          final emailValid = state.emailAddress.isValid();
          final passwordValid = state.password.isValid();

          emit(state.copyWith(
            authFailureOrSuccess: null,
            isSubmitting: true,
          ));

          if (logoImageValid && fullNameValid && emailValid && passwordValid) {
            failureOrSuccess = await imageStorageService.sendImage(
              image: state.logoImage.getOrCrash()!,
              folder: e.userType.getOrCrash() == UserTypeEnum.customer
                  ? 'customers'
                  : 'suppliers',
              fileName: state.emailAddress.getOrCrash(),
            );
            failureOrSuccess.fold(
              (l) {},
              (r) async {
                final imageUrlOrFailure =
                    await imageStorageService.getDownloadURL();
                imageUrlOrFailure.fold(
                  (f) {
                    failureOrSuccess = left(f);
                  },
                  (imageUrl) async {
                    failureOrSuccess =
                        await authFacade.registerInWithEmailAndPassword(
                      emailAddress: state.emailAddress,
                      password: state.password,
                    );
                    final userId = await authFacade.getSignedInUserId();
                    if (userId != null) {
                      final user = User(
                        id: userId,
                        userType: e.userType,
                        imageUrl: imageUrl,
                        fullName: state.fullName,
                        emailAddress: state.emailAddress,
                        phone: '',
                        address: '',
                        favorites: [],
                        storesSubscription: [],
                        isSubscribed: false,
                      );
                      failureOrSuccess = await userRepository.create(user);
                    }
                  },
                );
              },
            );
          }
          emit(state.copyWith(
            authFailureOrSuccess: failureOrSuccess,
            showErrorMessages: true,
            isSubmitting: false,
          ));
        },
      );
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openredu_mobile_flutter/src/auth/sign_in/data/repositories/sign_in_repository.dart';
import 'package:openredu_mobile_flutter/src/auth/sign_in/domain/models/sign_in_form.dart';
import 'package:openredu_mobile_flutter/src/auth/sign_in/domain/models/sign_in_model.dart';
import 'package:openredu_mobile_flutter/src/shared/data/entities/token_entity.dart';
import 'package:openredu_mobile_flutter/src/shared/data/models/user_credentials_model.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/token_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/repositories/user_credentials_repository.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/maybe.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/request_status.dart';
import 'package:openredu_mobile_flutter/src/shared/data/types/result.dart';

part 'sign_in_state.dart';
part 'sign_in_event.dart';
part 'sign_in_usecase.freezed.dart';

class SignInUseCase extends Bloc<SignInEvent, SignInState> {
  final SignInRepository _signInRepository;
  final TokenRepository _tokenRepository;
  final UserCredentialsRepository _userCredentialsRepository;

  SignInUseCase({
    required SignInRepository signInRepository,
    required TokenRepository tokenRepository,
    required UserCredentialsRepository userCredentialsRepository,
  })  : _signInRepository = signInRepository,
        _tokenRepository = tokenRepository,
        _userCredentialsRepository = userCredentialsRepository,
        super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      started: _started,
      enterTheApp: _enterTheApp,
      submitSignInForm: _submitSignInForm,
      emailChanged: _emailChanged,
      passwordChanged: _passwordChanged,
      backToSignIn: _backToSignIn,
      backToSignUpSignInChoice: _backToSignUpSignInChoice,
      signUp: _signUp,
      toForgotPassword: _toForgotPassword,
    );
  }

  Stream<SignInState> _started(_Started value) async* {
    yield state.copyWith(
      flow: const SignIn(),
    );
  }

  Stream<SignInState> _submitSignInForm(SubmitSignInForm value) async* {
    if (state.signInForm.isValid) {
      yield state.copyWith(
        signInRequestStatus: const Loading(),
      );

      Result<SignInModel> response = await _signInRepository.signInWithEmail(
        signInForm: state.signInForm,
      );

      yield* response.handle(
        onSuccess: (data) async* {
          await _tokenRepository.set(
            TokenEntity(token: data.token),
          );

          await _userCredentialsRepository.set(
            UserCredentialsModel(
              userId: data.userId,
              email: data.email,
              fullName: '',
            ),
          );
          yield state.copyWith(
            signInRequestStatus: const Succeeded(true),
          );
        },
        onFailure: (error) async* {
          yield state.copyWith(
            signInRequestStatus: Failed(error),
          );
        },
      );
    }
  }

  Stream<SignInState> _enterTheApp(EnterTheApp value) async* {
    yield state.copyWith(
      flow: const EnterApp(),
      signInRequestStatus: const Idle(),
    );
  }

  Stream<SignInState> _emailChanged(EmailChanged value) async* {
    yield state.copyWith(
      signInForm: state.signInForm.copyWith(
        email: state.signInForm.email.copyWith(
          field: Just(value.value),
        ),
      ),
      signInRequestStatus: const Idle(),
    );
  }

  Stream<SignInState> _passwordChanged(PasswordChanged value) async* {
    yield state.copyWith(
      signInForm: state.signInForm.copyWith(
        password: state.signInForm.password.copyWith(
          field: Just(value.value),
        ),
      ),
      signInRequestStatus: const Idle(),
    );
  }

  Stream<SignInState> _backToSignIn(BackToSignIn value) async* {
    yield state.copyWith(
      flow: const SignIn(),
      signInForm: const SignInForm(),
    );
  }

  Stream<SignInState> _backToSignUpSignInChoice(
      BackToSignUpSignInChoice value) async* {
    yield state.copyWith(
      flow: const CloseFlow(),
      signInForm: const SignInForm(),
    );
  }

  Stream<SignInState> _signUp(SignUp value) async* {
    yield state.copyWith(
      flow: const ToSignUp(),
    );
  }

  Stream<SignInState> _toForgotPassword(ToForgotPassword value) async* {
    yield state.copyWith(
      flow: const ForgotPassword(),
    );
  }
}

part of 'sign_in_usecase.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required SignInForm signInForm,
    required SignInFlow flow,
    required RequestStatus<bool> signInRequestStatus,
  }) = _SignInState;

  factory SignInState.initial() => const SignInState(
        flow: SignIn(),
        signInForm: SignInForm(),
        signInRequestStatus: Idle(),
      );
}

@freezed
class SignInFlow with _$SignInFlow {
  const factory SignInFlow.signIn() = SignIn;
  const factory SignInFlow.toSignUp() = ToSignUp;
  const factory SignInFlow.enterApp() = EnterApp;
  const factory SignInFlow.forgotPassword() = ForgotPassword;
  const factory SignInFlow.closeFlow() = CloseFlow;
  const factory SignInFlow.loginErrorModal() = LoginErrorModal;
}

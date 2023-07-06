part of 'sign_in_usecase.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.signUp() = SignUp;
  const factory SignInEvent.toForgotPassword() = ToForgotPassword;
  const factory SignInEvent.enterTheApp() = EnterTheApp;
  const factory SignInEvent.backToSignIn() = BackToSignIn;
  const factory SignInEvent.backToSignUpSignInChoice() =
      BackToSignUpSignInChoice;
  const factory SignInEvent.emailChanged(String value) = EmailChanged;
  const factory SignInEvent.passwordChanged(String value) = PasswordChanged;
  const factory SignInEvent.submitSignInForm() = SubmitSignInForm;
}

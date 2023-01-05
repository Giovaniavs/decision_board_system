part of 'splash_screen_usecase.dart';

@freezed
class SplashScreenEvent with _$SplashScreenEvent {
  const factory SplashScreenEvent.toLoginOrRegistermentScreen() =
      ToLoginOrRegistermentScreen;
  const factory SplashScreenEvent.backToInitialScreen() = BackToInitialScreen;
  const factory SplashScreenEvent.signIn() = SignIn;
  const factory SplashScreenEvent.signUp() = SignUp;
}

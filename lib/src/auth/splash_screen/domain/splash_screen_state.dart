part of 'splash_screen_usecase.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    required SplashScreenFlow flow,
  }) = _SplashScreenState;

  factory SplashScreenState.initial() => const SplashScreenState(
        flow: Splash(),
      );
}

@freezed
class SplashScreenFlow with _$SplashScreenFlow {
  const factory SplashScreenFlow.splash() = Splash;
  const factory SplashScreenFlow.loginOrRegistermentScreen() =
      LoginOrRegistermentScreen;
  const factory SplashScreenFlow.toSignIn() = ToSignIn;
  const factory SplashScreenFlow.toSignUp() = ToSignUp;
}

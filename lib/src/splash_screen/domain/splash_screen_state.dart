part of 'splash_screen_usecase.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    required SplashScreenFlow flow,
    required List<String> listLocations,
    required List<String> listDates,
    required List<String> listStatus,
  }) = _SplashScreenState;

  factory SplashScreenState.initial() => const SplashScreenState(
        flow: Splash(),
        listDates: [],
        listLocations: [],
        listStatus: [],
      );
}

@freezed
class SplashScreenFlow with _$SplashScreenFlow {
  const factory SplashScreenFlow.splash() = Splash;
  const factory SplashScreenFlow.loginOrRegistermentScreen() =
      LoginOrRegistermentScreen;
  const factory SplashScreenFlow.signInScreen() = SignInScreen;
  const factory SplashScreenFlow.signUpScreen() = SignUpScreen;
  const factory SplashScreenFlow.chartScreen() = ChartScreen;
}

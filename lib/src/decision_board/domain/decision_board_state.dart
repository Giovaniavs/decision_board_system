part of 'decision_board_usecase.dart';

@freezed
class DecisionBoardState with _$DecisionBoardState {
  const factory DecisionBoardState({
    required DecisionBoardFlow flow,
    required List<String> listLocations,
    required List<String> listDates,
    required List<String> listStatus,
  }) = _DecisionBoardState;

  factory DecisionBoardState.initial() => const DecisionBoardState(
        flow: Splash(),
        listDates: [],
        listLocations: [],
        listStatus: [],
      );
}

@freezed
class DecisionBoardFlow with _$DecisionBoardFlow {
  const factory DecisionBoardFlow.splash() = Splash;
  const factory DecisionBoardFlow.loginOrRegistermentScreen() =
      LoginOrRegistermentScreen;
  const factory DecisionBoardFlow.signInScreen() = SignInScreen;
  const factory DecisionBoardFlow.signUpScreen() = SignUpScreen;
  const factory DecisionBoardFlow.chartScreen() = ChartScreen;
}

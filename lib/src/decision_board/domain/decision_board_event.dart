part of 'decision_board_usecase.dart';

@freezed
class DecisionBoardEvent with _$DecisionBoardEvent {
  const factory DecisionBoardEvent.toLoginOrRegistermentScreen() =
      ToLoginOrRegistermentScreen;
  const factory DecisionBoardEvent.backToInitialScreen() = BackToInitialScreen;
  const factory DecisionBoardEvent.signIn() = SignIn;
  const factory DecisionBoardEvent.signUp() = SignUp;
  const factory DecisionBoardEvent.storeGraphData({
    required List<String> data,
  }) = StoreGraphData;
  const factory DecisionBoardEvent.goToChartsScreen({
    required List<List<dynamic>> data,
  }) = GoToChartsScreen;
}

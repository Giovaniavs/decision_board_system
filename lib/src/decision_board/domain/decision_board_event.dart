part of 'decision_board_usecase.dart';

@freezed
class DecisionBoardEvent with _$DecisionBoardEvent {
  const factory DecisionBoardEvent.goToUploadDataBaseScreen() =
      GoToUploadDataBaseScreen;
  const factory DecisionBoardEvent.goToHome({
    required List<List<dynamic>> formatedData,
  }) = GoToHome;
  const factory DecisionBoardEvent.goToChartsScreen() = GoToChartsScreen;
  const factory DecisionBoardEvent.goBackToUploadData() = GoBackToUploadData;
  const factory DecisionBoardEvent.goToChartsListScreenFlow() =
      GoToChartsListScreenFlow;
  const factory DecisionBoardEvent.goBackToHomeFlow() = GoBackToHomeFlow;
}

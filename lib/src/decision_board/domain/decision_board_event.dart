part of 'decision_board_usecase.dart';

@freezed
class DecisionBoardEvent with _$DecisionBoardEvent {
  const factory DecisionBoardEvent.goToUploadDataBaseScreen() =
      GoToUploadDataBaseScreen;
  const factory DecisionBoardEvent.goToChartsScreen({
    required List<List<dynamic>> data,
  }) = GoToChartsScreen;
}

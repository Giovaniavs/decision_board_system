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
        flow: SplashScreenFlow(),
        listDates: [],
        listLocations: [],
        listStatus: [],
      );
}

@freezed
class DecisionBoardFlow with _$DecisionBoardFlow {
  const factory DecisionBoardFlow.splashScreenFlow() = SplashScreenFlow;
  const factory DecisionBoardFlow.uploadDatabaseScreenFlow() =
      UploadDatabaseScreenFlow;
  const factory DecisionBoardFlow.chartScreenFlow() = ChartScreenFlow;
}

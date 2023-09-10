part of 'decision_board_usecase.dart';

@freezed
class DecisionBoardState with _$DecisionBoardState {
  const factory DecisionBoardState({
    required DecisionBoardFlow flow,
    required ChartSelected chartSelected,
    required List<ComplaintModel> complaintList,
    required List<ComplaintModel> filteredComplaintList,
  }) = _DecisionBoardState;

  factory DecisionBoardState.initial() => const DecisionBoardState(
        flow: SplashScreenFlow(),
        complaintList: [],
        filteredComplaintList: [],
        chartSelected: None(),
      );
}

@freezed
class DecisionBoardFlow with _$DecisionBoardFlow {
  const factory DecisionBoardFlow.splashScreenFlow() = SplashScreenFlow;
  const factory DecisionBoardFlow.uploadDatabaseScreenFlow() =
      UploadDatabaseScreenFlow;
  const factory DecisionBoardFlow.chartScreenFlow() = ChartScreenFlow;
  const factory DecisionBoardFlow.homeFlow() = HomeFlow;
  const factory DecisionBoardFlow.listChartsScreenFlow() = ListChartsScreenFlow;
  const factory DecisionBoardFlow.filteredComplaintsFlow() =
      FilteredComplaintsFlow;
}

@freezed
class ChartSelected with _$ChartSelected {
  const factory ChartSelected.none() = None;
  const factory ChartSelected.answeredByTrimesterChartFlow() =
      AnsweredByTrimesterChartFlow;
  const factory ChartSelected.localComplaintChartFlow() =
      LocalComplaintChartFlow;
  const factory ChartSelected.statusChartFlow() = StatusChartFlow;
  const factory ChartSelected.timeBasedChartFlow() = TimeBasedChartFlow;
}

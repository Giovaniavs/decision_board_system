import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decision_board_state.dart';
part 'decision_board_event.dart';
part 'decision_board_usecase.freezed.dart';

class DecisionBoardUseCase
    extends Bloc<DecisionBoardEvent, DecisionBoardState> {
  DecisionBoardUseCase() : super(DecisionBoardState.initial());

  @override
  Stream<DecisionBoardState> mapEventToState(DecisionBoardEvent event) async* {
    yield* event.map(
      goToChartsScreen: _goToChartsScreen,
      goToUploadDataBaseScreen: _goToUploadDataBaseScreen,
      goToHome: _goToHome,
    );
  }

  Stream<DecisionBoardState> _goToChartsScreen(GoToChartsScreen value) async* {
    List<List<dynamic>> auxRawList = [];
    List<String> auxListDates = [];
    List<String> auxListLocations = [];
    List<String> auxListStatus = [];

    auxRawList = value.data;

    for (var eachLine in auxRawList) {
      auxListDates.add(eachLine[3]);
      auxListLocations.add(eachLine[4]);
      auxListStatus.add(eachLine[5]);
    }

    yield state.copyWith(
      flow: const ChartScreenFlow(),
      listDates: auxListDates,
      listLocations: auxListLocations,
      listStatus: auxListStatus,
    );
  }

  Stream<DecisionBoardState> _goToUploadDataBaseScreen(
      GoToUploadDataBaseScreen value) async* {
    yield state.copyWith(
      flow: const UploadDatabaseScreenFlow(),
    );
  }

  Stream<DecisionBoardState> _goToHome(GoToHome value) async* {
    List<String> auxListDates = [];
    List<String> auxListLocations = [];
    List<String> auxListStatus = [];

    for (var eachLine in value.formatedData) {
      auxListDates.add(eachLine[3]);
      auxListLocations.add(eachLine[4]);
      auxListStatus.add(eachLine[5]);
    }

    yield state.copyWith(
      // flow: const HomeFlow(),
      listDates: auxListDates,
      listLocations: auxListLocations,
      listStatus: auxListStatus,
    );
  }
}

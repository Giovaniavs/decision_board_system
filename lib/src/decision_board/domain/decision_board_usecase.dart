import 'package:bloc/bloc.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:decision_board_system/src/shared/data/repositories/storage_repository.dart';
import 'package:decision_board_system/src/shared/data/types/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decision_board_state.dart';
part 'decision_board_event.dart';
part 'decision_board_usecase.freezed.dart';

class DecisionBoardUseCase
    extends Bloc<DecisionBoardEvent, DecisionBoardState> {
  DecisionBoardUseCase({
    required StorageRepository storageRepository,
  })  : _storageRepository = storageRepository,
        super(DecisionBoardState.initial());

  final StorageRepository _storageRepository;

  @override
  Stream<DecisionBoardState> mapEventToState(DecisionBoardEvent event) async* {
    yield* event.map(
      goToChartsScreen: _goToChartsScreen,
      goToUploadDataBaseScreen: _goToUploadDataBaseScreen,
      goToHome: _goToHome,
      goBackToUploadData: _goBackToUploadData,
      goToChartsListScreenFlow: _goToChartsListScreenFlow,
      goBackToHomeFlow: _goBackToHomeFlow,
    );
  }

  Stream<DecisionBoardState> _goToChartsScreen(GoToChartsScreen value) async* {
    yield state.copyWith(
      flow: const ChartScreenFlow(),
      chartSelected: value.chartSelected,
    );
  }

  Stream<DecisionBoardState> _goToUploadDataBaseScreen(
      GoToUploadDataBaseScreen value) async* {
    Result<List<ComplaintModel>> list =
        await _storageRepository.readLocalDatabase();

    yield* list.handle(
      onSuccess: (data) async* {
        if (data.isEmpty) {
          yield state.copyWith(
            flow: const UploadDatabaseScreenFlow(),
          );
        } else {
          yield state.copyWith(
            flow: const HomeFlow(),
            complaintList: data,
          );
        }
      },
      onFailure: (error) async* {
        yield state.copyWith(
          flow: const UploadDatabaseScreenFlow(),
        );
      },
    );
  }

  Stream<DecisionBoardState> _goToHome(GoToHome value) async* {
    List<ComplaintModel> complaintList = [];

    for (var eachLine in value.formatedData) {
      complaintList.add(
        ComplaintModel(
          complaintId: eachLine[1].toString(),
          title: eachLine[2],
          dateTime: eachLine[3],
          localization: eachLine[4],
          status: eachLine[5],
          text: eachLine[6],
        ),
      );
    }

    await _storageRepository.writeLocalDatabase(data: complaintList);

    yield state.copyWith(
      flow: const HomeFlow(),
      complaintList: complaintList,
    );
  }

  Stream<DecisionBoardState> _goBackToUploadData(
      GoBackToUploadData value) async* {
    await _storageRepository.writeLocalDatabase(
      data: [],
    );

    yield state.copyWith(
      flow: const UploadDatabaseScreenFlow(),
    );
  }

  Stream<DecisionBoardState> _goToChartsListScreenFlow(
      GoToChartsListScreenFlow value) async* {
    yield state.copyWith(
      flow: const ListChartsScreenFlow(),
    );
  }

  Stream<DecisionBoardState> _goBackToHomeFlow(GoBackToHomeFlow value) async* {
    yield state.copyWith(
      flow: const HomeFlow(),
    );
  }
}

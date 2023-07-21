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
    );
  }

  Stream<DecisionBoardState> _goToChartsScreen(GoToChartsScreen value) async* {}

  Stream<DecisionBoardState> _goToUploadDataBaseScreen(
      GoToUploadDataBaseScreen value) async* {
    yield state.copyWith(
      flow: const UploadDatabaseScreenFlow(),
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

    print('1');
    await _storageRepository.writeLocalDatabase(data: complaintList);
    print('2');
    Result<List<ComplaintModel>> list =
        await _storageRepository.readLocalDatabase();
    print('3');
    yield* list.handle(
      onSuccess: (data) async* {
        print(data);
      },
      onFailure: (error) async* {
        print(error);
      },
    );
    yield state.copyWith(
      flow: const HomeFlow(),
      complaintList: complaintList,
    );
  }
}

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
      backToInitialScreen: _backToInitialScreen,
      signIn: _signIn,
      signUp: _signUp,
      toLoginOrRegistermentScreen: _toLoginOrRegistermentScreen,
      storeGraphData: _storeGraphData,
      goToChartsScreen: _goToChartsScreen,
    );
  }

  Stream<DecisionBoardState> _backToInitialScreen(
      BackToInitialScreen value) async* {
    yield state;
  }

  Stream<DecisionBoardState> _signIn(SignIn value) async* {
    yield state.copyWith(
      flow: const SignInScreen(),
    );
  }

  Stream<DecisionBoardState> _signUp(SignUp value) async* {
    yield state;
  }

  Stream<DecisionBoardState> _toLoginOrRegistermentScreen(
    ToLoginOrRegistermentScreen value,
  ) async* {
    yield state.copyWith(
      flow: const LoginOrRegistermentScreen(),
    );
  }

  Stream<DecisionBoardState> _storeGraphData(StoreGraphData value) async* {
    // List<String> auxListDates = state.listDates;
    // auxListDates.add(value.date);
    // List<String> auxListLocations = state.listLocations;
    // auxListLocations.add(value.location);
    // List<String> auxListStatus = state.listStatus;
    // auxListStatus.add(value.status);
    // print('ola');
    // yield state.copyWith(
    //   listDates: auxListDates,
    //   listLocations: auxListLocations,
    //   listStatus: auxListStatus,
    // );
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
      flow: const ChartScreen(),
      listDates: auxListDates,
      listLocations: auxListLocations,
      listStatus: auxListStatus,
    );
  }
}

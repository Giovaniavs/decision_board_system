import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:decision_board_system/src/shared/shared_dependency_injection.dart';

final GetIt di = GetIt.instance;

void setupDi() {
  setupSharedDI();
  di.registerFactory(
    () => DecisionBoardUseCase(
      storageRepository: di(),
    ),
  );
}

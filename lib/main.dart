import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:flutter/material.dart';
import 'package:decision_board_system/src/app.dart';
import 'package:decision_board_system/src/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDi();

  runApp(
    MeChartFlutter(
      decisionBoardUseCase: di<DecisionBoardUseCase>(),
    ),
  );
}

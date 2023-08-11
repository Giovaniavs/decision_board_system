import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/decision_board/presentation/smarties/decision_board_smart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:decision_board_system/src/dependency_injection.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';

class MeChartFlutter extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const MeChartFlutter({
    Key? key,
    required DecisionBoardUseCase decisionBoardUseCase,
  })  : _decisionBoardUseCase = decisionBoardUseCase,
        super(key: key);

  @override
  State<MeChartFlutter> createState() => _MeChartFlutterState();
}

class _MeChartFlutterState extends State<MeChartFlutter> {
  final GlobalKey<NavigatorState> navigatorKey =
      di<GlobalKey<NavigatorState>>();
  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'MeChart',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primaryColor: BaseColors.primary,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch(
          accentColor: BaseColors.primary,
        ),
        canvasColor: Colors.transparent,
      ),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      initialRoute: "/",
      home: DecisionBoardSmartView(
        decisionBoardUseCase: widget._decisionBoardUseCase,
      ),
    );
    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        }
      },
      child: app,
    );
  }
}

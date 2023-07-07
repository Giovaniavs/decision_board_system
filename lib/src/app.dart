import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/decision_board/presentation/smarties/decision_board_smart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:decision_board_system/src/dependency_injection.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';

class OpenReduMobile extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const OpenReduMobile({
    Key? key,
    required DecisionBoardUseCase decisionBoardUseCase,
  })  : _decisionBoardUseCase = decisionBoardUseCase,
        super(key: key);

  @override
  State<OpenReduMobile> createState() => _OpenReduMobileState();
}

class _OpenReduMobileState extends State<OpenReduMobile> {
  final GlobalKey<NavigatorState> navigatorKey =
      di<GlobalKey<NavigatorState>>();
  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'OpenRedu Mobile',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primaryColor: ColorTokens.primary,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: ColorTokens.primary,
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

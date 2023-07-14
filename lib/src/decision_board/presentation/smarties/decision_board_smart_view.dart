import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/charts_screen.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/load_csv_screen.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/splash_screen.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/upload_database_screen.dart';
import 'package:decision_board_system/src/shared/utils/internal_navigation_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DecisionBoardSmartView extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const DecisionBoardSmartView({
    Key? key,
    required DecisionBoardUseCase decisionBoardUseCase,
  })  : _decisionBoardUseCase = decisionBoardUseCase,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _DecisionBoardSmartViewState();
}

class _DecisionBoardSmartViewState extends State<DecisionBoardSmartView> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  late final List<Page> modulePages;

  @override
  void initState() {
    modulePages = [
      MaterialPage(
        child: SplashScreenScreen(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        ),
      ),
      MaterialPage(
        child: UploadDatabaseScreen(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        ),
      ),
      // MaterialPage(
      //   child: LoadCsvScreen(
      //     decisionBoardUseCase: widget._decisionBoardUseCase,
      //   ),
      // ),
      // MaterialPage(
      //   child: ChartsScreen(
      //     decisionBoardUseCase: widget._decisionBoardUseCase,
      //   ),
      // ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DecisionBoardUseCase, DecisionBoardState>(
      bloc: widget._decisionBoardUseCase,
      builder: _builder,
    );
  }

  List<Page> _currentPageStack = [];

  List<Page> _pageList(DecisionBoardFlow flow) {
    return flow.maybeMap(
      splashScreenFlow: (_) {
        _currentPageStack = [
          modulePages[0],
        ];
        return _currentPageStack;
      },
      uploadDatabaseScreenFlow: (_) {
        _currentPageStack = [
          modulePages[0],
          modulePages[1],
        ];
        return _currentPageStack;
      },
      orElse: () {
        return _currentPageStack;
      },
    );
  }

  Widget _builder(BuildContext context, DecisionBoardState state) {
    return Navigator(
      key: navigatorKey,
      pages: _pageList(state.flow),
      onPopPage: (_, __) => _dealWithPop(state, false),
    );
  }

  bool _dealWithPop(DecisionBoardState state, bool internalNavigator) {
    bool condition = internalNavigationCondition(
      context: context,
      internalNavigator: internalNavigator,
    );

    return state.flow.maybeWhen(
      uploadDatabaseScreenFlow: () {
        return condition;
      },
      orElse: () {
        return false;
      },
    );
  }
}

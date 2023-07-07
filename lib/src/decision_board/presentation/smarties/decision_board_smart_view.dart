import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/charts_screen.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/load_csv_screen.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/splash_screen_login_or_registerment_screen.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/splash_screen_screen.dart';
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
        child: SplashScreenLoginOrRegistermentScreen(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        ),
      ),
      MaterialPage(
        child: LoadCsvScreen(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        ),
      ),
      MaterialPage(
        child: ChartsScreen(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        ),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DecisionBoardUseCase, DecisionBoardState>(
      bloc: widget._decisionBoardUseCase,
      listener: _listener,
      listenWhen: _listenWhen,
      builder: _builder,
    );
  }

  void _listener(BuildContext context, DecisionBoardState state) {
    state.flow.maybeMap(
      orElse: () {},
    );
  }

  bool _listenWhen(DecisionBoardState previous, DecisionBoardState current) {
    return previous.flow != current.flow;
  }

  List<Page> _currentPageStack = [];

  List<Page> _pageList(DecisionBoardFlow flow) {
    return flow.maybeMap(
      splash: (_) {
        _currentPageStack = [
          modulePages[0],
        ];
        return _currentPageStack;
      },
      loginOrRegistermentScreen: (_) {
        _currentPageStack = [
          modulePages[0],
          modulePages[1],
        ];
        return _currentPageStack;
      },
      signInScreen: (_) {
        _currentPageStack = [
          modulePages[0],
          modulePages[1],
          modulePages[2],
        ];
        return _currentPageStack;
      },
      chartScreen: (_) {
        _currentPageStack = [
          modulePages[0],
          modulePages[1],
          modulePages[2],
          modulePages[3],
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
      onPopPage: (route, result) {
        if (route.navigator?.canPop() == false) {
          Navigator.of(context).pop();
        }
        return route.didPop(result);
      },
    );
  }
}

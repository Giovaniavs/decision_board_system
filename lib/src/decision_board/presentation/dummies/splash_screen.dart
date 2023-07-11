import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/scheduler.dart';
import 'package:decision_board_system/src/shared/design_system/assets/db_images.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';

class SplashScreenScreen extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const SplashScreenScreen({
    Key? key,
    required DecisionBoardUseCase decisionBoardUseCase,
  })  : _decisionBoardUseCase = decisionBoardUseCase,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenScreenState();
}

class _SplashScreenScreenState extends State<SplashScreenScreen> {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        Future.delayed(
          const Duration(seconds: 1),
          () {
            widget._decisionBoardUseCase.add(
              const GoToUploadDataBaseScreen(),
            );
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DecisionBoardUseCase, DecisionBoardState>(
      bloc: widget._decisionBoardUseCase,
      builder: _builder,
    );
  }

  Widget _builder(BuildContext context, DecisionBoardState state) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              DBImages.logoDecisionBoardSystem,
            ),
          ),
        ),
      ),
      backgroundColor: BaseColors.primary,
    );
  }
}

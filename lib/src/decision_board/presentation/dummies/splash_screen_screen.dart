import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/scheduler.dart';
import 'package:decision_board_system/src/shared/design_system/assets/ob_images.dart';
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

class _SplashScreenScreenState extends State<SplashScreenScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        Future.delayed(
          const Duration(seconds: 1),
          () {
            widget._decisionBoardUseCase.add(
              const ToLoginOrRegistermentScreen(),
            );
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DecisionBoardUseCase, DecisionBoardState>(
        bloc: widget._decisionBoardUseCase,
        builder: (context, state) {
          return Center(
            child: Image.asset(
              OpenReduImages.logoOpenRedu,
              height: 158.0,
              width: 158.0,
            ),
          );
        },
      ),
      backgroundColor: ColorTokens.whiteBackground,
    );
  }
}

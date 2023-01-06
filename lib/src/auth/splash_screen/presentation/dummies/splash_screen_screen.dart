import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/scheduler.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/domain/splash_screen_usecase.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/assets/ob_images.dart';
import 'package:openredu_mobile_flutter/src/shared/design_system/tokens/color_tokens.dart';

class SplashScreenScreen extends StatefulWidget {
  final SplashScreenUseCase _splashScrenUseCase;

  const SplashScreenScreen({
    Key? key,
    required SplashScreenUseCase splashScreenUseCase,
  })  : _splashScrenUseCase = splashScreenUseCase,
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
            widget._splashScrenUseCase.add(
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
      body: BlocBuilder<SplashScreenUseCase, SplashScreenState>(
        bloc: widget._splashScrenUseCase,
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

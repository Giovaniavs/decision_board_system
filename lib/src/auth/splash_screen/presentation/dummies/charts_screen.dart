import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/domain/splash_screen_usecase.dart';

class ChartsScreen extends StatelessWidget {
  final SplashScreenUseCase _splashScreenUseCase;

  const ChartsScreen(
      {super.key, required SplashScreenUseCase splashScreenUseCase})
      : _splashScreenUseCase = splashScreenUseCase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: LineChart(
          LineChartData(),
          swapAnimationDuration: const Duration(milliseconds: 150), // Optional
          swapAnimationCurve: Curves.linear, // Optional
        ),
      ),
      // body: ListView(
      //   children: _splashScreenUseCase.state.listDates
      //       .map(
      //         (e) => Text(e.substring(0, 10)),
      //       )
      //       .toList(),
      // ),
    );
  }
}

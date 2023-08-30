import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnsweredByTrimesterChart extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const AnsweredByTrimesterChart({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  State<AnsweredByTrimesterChart> createState() =>
      _AnsweredByTrimesterChartState();
}

class _AnsweredByTrimesterChartState extends State<AnsweredByTrimesterChart> {
  double jan = 0;
  double feb = 0;
  double mar = 0;
  double apr = 0;
  double may = 0;
  double jun = 0;
  double jul = 0;
  double aug = 0;
  double sep = 0;
  double oct = 0;
  double nov = 0;
  double dec = 0;

  @override
  void initState() {
    super.initState();

    for (var element in widget._decisionBoardUseCase.state.complaintList) {
      if (element.dateTime.substring(5, 7) == "01") {
        jan++;
      } else if (element.dateTime.substring(5, 7) == "02") {
        feb++;
      } else if (element.dateTime.substring(5, 7) == "03") {
        mar++;
      } else if (element.dateTime.substring(5, 7) == "04") {
        apr++;
      } else if (element.dateTime.substring(5, 7) == "05") {
        may++;
      } else if (element.dateTime.substring(5, 7) == "06") {
        jun++;
      } else if (element.dateTime.substring(5, 7) == "07") {
        jul++;
      } else if (element.dateTime.substring(5, 7) == "08") {
        aug++;
      } else if (element.dateTime.substring(5, 7) == "09") {
        sep++;
      } else if (element.dateTime.substring(5, 7) == "10") {
        oct++;
      } else if (element.dateTime.substring(5, 7) == "11") {
        nov++;
      } else if (element.dateTime.substring(5, 7) == "12") {
        dec++;
      }
    }
  }

  List<Color> gradientColors = [
    GraphColors.contentColorCyan,
    GraphColors.contentColorBlue,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('1° Tri', style: style);
        break;
      case 5:
        text = const Text('2° Tri', style: style);
        break;
      case 8:
        text = const Text('3° Tri', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;

    if (value.toDouble() == 0) {
      text = "0";
    } else if (value.toDouble() ==
        (widget._decisionBoardUseCase.state.complaintList.length * 0.50)
            .toInt()) {
      text = (widget._decisionBoardUseCase.state.complaintList.length * 0.50)
          .toInt()
          .toString();
    } else if (value.toDouble() ==
        widget._decisionBoardUseCase.state.complaintList.length) {
      text = widget._decisionBoardUseCase.state.complaintList.length.toString();
    } else {
      return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: GraphColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: GraphColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: widget._decisionBoardUseCase.state.complaintList.length.toDouble(),
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, jan),
            FlSpot(1, feb),
            FlSpot(2, mar),
            FlSpot(3, apr),
            FlSpot(4, may),
            FlSpot(5, jun),
            FlSpot(6, jul),
            FlSpot(7, aug),
            FlSpot(8, sep),
            FlSpot(9, oct),
            FlSpot(10, nov),
            FlSpot(11, dec),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

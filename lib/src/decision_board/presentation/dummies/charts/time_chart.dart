import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/utils/color_extension.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TimeChart extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  TimeChart({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  List<Color> get availableColors => const <Color>[
        GraphColors.contentColorPurple,
        GraphColors.contentColorYellow,
        GraphColors.contentColorBlue,
        GraphColors.contentColorOrange,
        GraphColors.contentColorPink,
        GraphColors.contentColorRed,
      ];

  final Color barBackgroundColor =
      GraphColors.contentColorWhite.darken().withOpacity(0.3);
  final Color barColor = GraphColors.contentColorWhite;
  final Color touchedBarColor = GraphColors.contentColorGreen;

  @override
  State<StatefulWidget> createState() => TimeChartState();
}

class TimeChartState extends State<TimeChart> {
  final Duration animDuration = const Duration(milliseconds: 250);
  late Map<String, double> sevenLastYearsMap;
  int touchedIndex = -1;
  int currentYear = DateTime.now().year;
  int pastYear = DateTime.now().year - 1;
  int pastTwoYears = DateTime.now().year - 2;
  int pastThreeYears = DateTime.now().year - 3;
  int pastFourYears = DateTime.now().year - 4;
  int pastFiveYears = DateTime.now().year - 5;
  int pastSixYears = DateTime.now().year - 6;

  @override
  void initState() {
    super.initState();

    sevenLastYearsMap = {
      currentYear.toString(): 0,
      pastYear.toString(): 0,
      pastTwoYears.toString(): 0,
      pastThreeYears.toString(): 0,
      pastFourYears.toString(): 0,
      pastFiveYears.toString(): 0,
      pastSixYears.toString(): 0,
    };

    for (var element in widget._decisionBoardUseCase.state.complaintList) {
      String yearFromDateTime = element.dateTime.substring(0, 4);

      if (sevenLastYearsMap.containsKey(yearFromDateTime)) {
        sevenLastYearsMap[yearFromDateTime] =
            sevenLastYearsMap[yearFromDateTime]! + 1;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BaseColors.primary,
        borderRadius: BorderRadius.circular(18),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: SpacingTokens.hecto,
        vertical: SpacingTokens.kilo,
      ),
      padding: const EdgeInsets.only(top: SpacingTokens.deka),
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: BarChart(
                        mainBarData(),
                        swapAnimationDuration: animDuration,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color? barColor,
    double width = 22,
    List<int> showTooltips = const [],
  }) {
    barColor ??= widget.barColor;
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? widget.touchedBarColor : barColor,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: widget.touchedBarColor.darken(80))
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            color: widget.barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, sevenLastYearsMap[currentYear.toString()]!,
                isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, sevenLastYearsMap[pastYear.toString()]!,
                isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, sevenLastYearsMap[pastTwoYears.toString()]!,
                isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(
                3, sevenLastYearsMap[pastThreeYears.toString()]!,
                isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(
                4, sevenLastYearsMap[pastFourYears.toString()]!,
                isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(
                5, sevenLastYearsMap[pastFiveYears.toString()]!,
                isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, sevenLastYearsMap[pastSixYears.toString()]!,
                isTouched: i == touchedIndex);
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.blueGrey,
          tooltipHorizontalAlignment: FLHorizontalAlignment.right,
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String weekDay;
            switch (group.x) {
              case 0:
                weekDay = currentYear.toString();
                break;
              case 1:
                weekDay = pastYear.toString();
                break;
              case 2:
                weekDay = pastTwoYears.toString();
                break;
              case 3:
                weekDay = pastThreeYears.toString();
                break;
              case 4:
                weekDay = pastFourYears.toString();
                break;
              case 5:
                weekDay = pastFiveYears.toString();
                break;
              case 6:
                weekDay = pastSixYears.toString();
                break;
              default:
                throw Error();
            }
            return BarTooltipItem(
              '$weekDay\n',
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: (rod.toY - 1).toString(),
                  style: TextStyle(
                    color: widget.touchedBarColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
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
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: const FlGridData(show: false),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text(currentYear.toString(), style: style);
        break;
      case 1:
        text = Text(pastYear.toString(), style: style);
        break;
      case 2:
        text = Text(pastTwoYears.toString(), style: style);
        break;
      case 3:
        text = Text(pastThreeYears.toString(), style: style);
        break;
      case 4:
        text = Text(pastFourYears.toString(), style: style);
        break;
      case 5:
        text = Text(pastFiveYears.toString(), style: style);
        break;
      case 6:
        text = Text(pastSixYears.toString(), style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }
}

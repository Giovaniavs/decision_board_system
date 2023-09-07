import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
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
  String currentYear = DateTime.now().year.toString();
  String pastYear = (DateTime.now().year - 1).toString();
  String pastTwoYears = (DateTime.now().year - 2).toString();
  String pastThreeYears = (DateTime.now().year - 3).toString();
  String pastFourYears = (DateTime.now().year - 4).toString();
  String pastFiveYears = (DateTime.now().year - 5).toString();

  List<ComplaintModel> currentFilteredComplaintList = [];

  bool currentYearValue = false;
  bool pastYearValue = false;
  bool pastTwoYearsValue = false;
  bool pastThreeYearsValue = false;
  bool pastFourYearsValue = false;
  bool pastFiveYearsValue = false;

  bool dayOneValue = false;
  bool dayTwoValue = false;
  bool dayThreeValue = false;
  bool dayFourValue = false;
  bool dayFiveValue = false;
  bool daySixValue = false;
  bool daySevenValue = false;
  bool dayEightValue = false;
  bool dayNineValue = false;
  bool dayTenValue = false;
  bool dayElevenValue = false;
  bool dayTwelveValue = false;
  bool dayThirteenValue = false;
  bool dayFourteenValue = false;
  bool dayFifteenValue = false;
  bool daySixteenValue = false;
  bool daySeventeenValue = false;
  bool dayEighteenValue = false;
  bool dayNineteenValue = false;
  bool dayTwentyValue = false;
  bool dayTwentyOneValue = false;
  bool dayTwentyTwoValue = false;
  bool dayTwentyThreeValue = false;
  bool dayTwentyFourValue = false;
  bool dayTwentyFiveValue = false;
  bool dayTwentySixValue = false;
  bool dayTwentySevenValue = false;
  bool dayTwentyEightValue = false;
  bool dayTwentyNineValue = false;
  bool dayThirtyValue = false;
  bool dayThirtyOneValue = false;

  List<Color> gradientColors = [
    GraphColors.contentColorCyan,
    GraphColors.contentColorBlue,
  ];

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

    currentFilteredComplaintList =
        widget._decisionBoardUseCase.state.complaintList;

    applyAllMonthsValues(currentFilteredComplaintList);
  }

  @override
  Widget build(BuildContext context) {
    if (isAnySelected() == 0) {
      currentFilteredComplaintList =
          widget._decisionBoardUseCase.state.complaintList;

      applyAllMonthsValues(currentFilteredComplaintList);
    }

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: SpacingTokens.hecto,
                    bottom: SpacingTokens.deka,
                  ),
                  child: Text(
                    'Filtrar por ano:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: currentYearValue,
                          onChanged: (value) => setState(
                            () {
                              currentYearValue = value!;
                              currentFilteredComplaintList =
                                  applyYearFilter(value, currentYear);
                            },
                          ),
                        ),
                        Text(currentYear),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: pastYearValue,
                          onChanged: (value) => setState(
                            () {
                              pastYearValue = value!;
                              currentFilteredComplaintList =
                                  applyYearFilter(value, pastYear);
                            },
                          ),
                        ),
                        Text(pastYear),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: pastTwoYearsValue,
                          onChanged: (value) => setState(
                            () {
                              pastTwoYearsValue = value!;
                              currentFilteredComplaintList =
                                  applyYearFilter(value, pastTwoYears);
                            },
                          ),
                        ),
                        Text(pastTwoYears),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: pastThreeYearsValue,
                          onChanged: (value) => setState(
                            () {
                              pastThreeYearsValue = value!;
                              currentFilteredComplaintList =
                                  applyYearFilter(value, pastThreeYears);
                            },
                          ),
                        ),
                        Text(pastThreeYears),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: pastFourYearsValue,
                          onChanged: (value) => setState(
                            () {
                              pastFourYearsValue = value!;
                              currentFilteredComplaintList =
                                  applyYearFilter(value, pastFourYears);
                            },
                          ),
                        ),
                        Text(pastFourYears),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: pastFiveYearsValue,
                          onChanged: (value) => setState(
                            () {
                              pastFiveYearsValue = value!;
                              currentFilteredComplaintList =
                                  applyYearFilter(value, pastFiveYears);
                            },
                          ),
                        ),
                        Text(pastFiveYears),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: SpacingTokens.hecto,
                    bottom: SpacingTokens.deka,
                  ),
                  child: Text(
                    'Filtrar por dias:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: dayThirtyOneValue,
                          onChanged: (value) => setState(
                            () {
                              dayThirtyOneValue = value!;
                              currentFilteredComplaintList =
                                  applyDayFilter(value, "31");
                            },
                          ),
                        ),
                        const Text('31'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: dayThirtyValue,
                          onChanged: (value) => setState(
                            () {
                              dayThirtyValue = value!;
                              currentFilteredComplaintList =
                                  applyDayFilter(value, "30");
                            },
                          ),
                        ),
                        const Text('30'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: dayTwentyNineValue,
                          onChanged: (value) => setState(
                            () {
                              dayTwentyNineValue = value!;
                              currentFilteredComplaintList =
                                  applyDayFilter(value, "29");
                            },
                          ),
                        ),
                        const Text('29'),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: dayTwentyEightValue,
                          onChanged: (value) => setState(
                            () {
                              dayTwentyEightValue = value!;
                              currentFilteredComplaintList =
                                  applyDayFilter(value, "28");
                            },
                          ),
                        ),
                        const Text('28'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: dayTwentySevenValue,
                          onChanged: (value) => setState(
                            () {
                              dayTwentySevenValue = value!;
                              currentFilteredComplaintList =
                                  applyDayFilter(value, "27");
                            },
                          ),
                        ),
                        const Text('27'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: dayTwentySixValue,
                          onChanged: (value) => setState(
                            () {
                              dayTwentySixValue = value!;
                              currentFilteredComplaintList =
                                  applyDayFilter(value, "26");
                            },
                          ),
                        ),
                        const Text('26'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
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
        (currentFilteredComplaintList.length * 0.50).toInt()) {
      text = (currentFilteredComplaintList.length * 0.50).toInt().toString();
    } else if (value.toDouble() == currentFilteredComplaintList.length) {
      text = currentFilteredComplaintList.length.toString();
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
      maxY: currentFilteredComplaintList.length.toDouble(),
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

  void resetAllMonthsValues() {
    jan = 0;
    feb = 0;
    mar = 0;
    apr = 0;
    may = 0;
    jun = 0;
    jul = 0;
    aug = 0;
    sep = 0;
    oct = 0;
    nov = 0;
    dec = 0;
  }

  void applyAllMonthsValues(List<ComplaintModel> complaintList) {
    resetAllMonthsValues();

    for (var element in complaintList) {
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

  int isAnySelected() {
    List<bool> boolList = [
      currentYearValue,
      pastYearValue,
      pastTwoYearsValue,
      pastThreeYearsValue,
      pastFourYearsValue,
      pastFiveYearsValue,
      dayOneValue,
      dayTwoValue,
      dayThreeValue,
      dayFourValue,
      dayFiveValue,
      daySixValue,
      daySevenValue,
      dayEightValue,
      dayNineValue,
      dayTenValue,
      dayElevenValue,
      dayTwelveValue,
      dayThirteenValue,
      dayFourteenValue,
      dayFifteenValue,
      daySixteenValue,
      daySeventeenValue,
      dayEighteenValue,
      dayNineteenValue,
      dayTwentyValue,
      dayTwentyOneValue,
      dayTwentyTwoValue,
      dayTwentyThreeValue,
      dayTwentyFourValue,
      dayTwentyFiveValue,
      dayTwentySixValue,
      dayTwentySevenValue,
      dayTwentyEightValue,
      dayTwentyNineValue,
      dayThirtyValue,
      dayThirtyOneValue,
    ];

    boolList.removeWhere((element) => element == false);

    return boolList.length;
  }

  List<String> wichYearsAreSelected() {
    List<String> selectedYears = [];

    if (currentYearValue) {
      selectedYears.add(currentYear);
    }
    if (pastYearValue) {
      selectedYears.add(pastYear);
    }
    if (pastTwoYearsValue) {
      selectedYears.add(pastTwoYears);
    }
    if (pastThreeYearsValue) {
      selectedYears.add(pastThreeYears);
    }
    if (pastFourYearsValue) {
      selectedYears.add(pastFourYears);
    }
    if (pastFiveYearsValue) {
      selectedYears.add(pastFiveYears);
    }

    return selectedYears;
  }

  List<String> wichDaysAreSelected() {
    List<String> selectedDays = [];

    if (dayOneValue) {
      selectedDays.add("01");
    }
    if (dayTwoValue) {
      selectedDays.add("02");
    }
    if (dayThreeValue) {
      selectedDays.add("03");
    }
    if (dayFourValue) {
      selectedDays.add("04");
    }
    if (dayFiveValue) {
      selectedDays.add("05");
    }
    if (daySixValue) {
      selectedDays.add("06");
    }
    if (daySevenValue) {
      selectedDays.add("07");
    }
    if (dayEightValue) {
      selectedDays.add("08");
    }
    if (dayNineValue) {
      selectedDays.add("09");
    }
    if (dayTenValue) {
      selectedDays.add("10");
    }
    if (dayElevenValue) {
      selectedDays.add("11");
    }
    if (dayTwelveValue) {
      selectedDays.add("12");
    }
    if (dayThirteenValue) {
      selectedDays.add("13");
    }
    if (dayFourteenValue) {
      selectedDays.add("14");
    }
    if (dayFifteenValue) {
      selectedDays.add("15");
    }
    if (daySixteenValue) {
      selectedDays.add("16");
    }
    if (daySeventeenValue) {
      selectedDays.add("17");
    }
    if (dayEighteenValue) {
      selectedDays.add("18");
    }
    if (dayNineteenValue) {
      selectedDays.add("19");
    }
    if (dayTwentyValue) {
      selectedDays.add("20");
    }
    if (dayTwentyOneValue) {
      selectedDays.add("21");
    }
    if (dayTwentyTwoValue) {
      selectedDays.add("22");
    }
    if (dayTwentyThreeValue) {
      selectedDays.add("23");
    }
    if (dayTwentyFourValue) {
      selectedDays.add("24");
    }
    if (dayTwentyFiveValue) {
      selectedDays.add("25");
    }
    if (dayTwentySixValue) {
      selectedDays.add("26");
    }
    if (dayTwentySevenValue) {
      selectedDays.add("27");
    }
    if (dayTwentyEightValue) {
      selectedDays.add("28");
    }
    if (dayTwentyNineValue) {
      selectedDays.add("29");
    }
    if (dayThirtyValue) {
      selectedDays.add("30");
    }
    if (dayThirtyOneValue) {
      selectedDays.add("31");
    }

    return selectedDays;
  }

  List<ComplaintModel> addSelectedItemsFilter() {
    List<String> selectedYears = wichYearsAreSelected();
    List<String> selectedDays = wichDaysAreSelected();

    List<ComplaintModel> filteredComplaintList = [];

    for (ComplaintModel element
        in widget._decisionBoardUseCase.state.complaintList) {
      if (selectedYears.isNotEmpty) {
        if (selectedYears.contains(element.dateTime.substring(0, 4))) {
          if (selectedDays.isNotEmpty) {
            if (selectedDays.contains(element.dateTime.substring(8, 10))) {
              filteredComplaintList.add(element);
            }
          } else {
            if (selectedYears.isNotEmpty) {
              if (selectedYears.contains(element.dateTime.substring(0, 4))) {
                filteredComplaintList.add(element);
              }
            }
          }
        }
      } else {
        if (selectedDays.contains(element.dateTime.substring(8, 10))) {
          filteredComplaintList.add(element);
        }
      }
    }

    currentFilteredComplaintList = filteredComplaintList;
    applyAllMonthsValues(currentFilteredComplaintList);
    return currentFilteredComplaintList;
  }

  List<ComplaintModel> applyYearFilter(bool value, String year) {
    if (value) {
      if (isAnySelected() == 1) {
        List<ComplaintModel> filteredComplaintList = [];

        for (ComplaintModel element
            in widget._decisionBoardUseCase.state.complaintList) {
          if (element.dateTime.substring(0, 4) == year) {
            filteredComplaintList.add(element);
          }
        }

        currentFilteredComplaintList = filteredComplaintList;
        applyAllMonthsValues(currentFilteredComplaintList);
        return currentFilteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      if (isAnySelected() == 1) {
        List<ComplaintModel> filteredComplaintList = [];

        for (ComplaintModel element in currentFilteredComplaintList) {
          if (element.dateTime.substring(0, 4) != year) {
            filteredComplaintList.add(element);
          }
        }

        if (filteredComplaintList.isEmpty) {
          currentFilteredComplaintList =
              widget._decisionBoardUseCase.state.complaintList;
          applyAllMonthsValues(currentFilteredComplaintList);
          return currentFilteredComplaintList;
        } else {
          currentFilteredComplaintList = filteredComplaintList;
          applyAllMonthsValues(currentFilteredComplaintList);
          return currentFilteredComplaintList;
        }
      } else {
        return addSelectedItemsFilter();
      }
    }
  }

  List<ComplaintModel> applyDayFilter(bool value, String day) {
    if (value) {
      if (isAnySelected() == 1) {
        List<ComplaintModel> filteredComplaintList = [];

        for (ComplaintModel element
            in widget._decisionBoardUseCase.state.complaintList) {
          if (element.dateTime.substring(8, 10) == day) {
            filteredComplaintList.add(element);
          }
        }

        currentFilteredComplaintList = filteredComplaintList;
        applyAllMonthsValues(currentFilteredComplaintList);
        return currentFilteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      List<ComplaintModel> filteredComplaintList = [];

      for (ComplaintModel element in currentFilteredComplaintList) {
        if (element.dateTime.substring(8, 10) != day) {
          filteredComplaintList.add(element);
        }
      }

      if (filteredComplaintList.isEmpty) {
        currentFilteredComplaintList =
            widget._decisionBoardUseCase.state.complaintList;
        applyAllMonthsValues(currentFilteredComplaintList);
        return currentFilteredComplaintList;
      } else {
        currentFilteredComplaintList = filteredComplaintList;
        applyAllMonthsValues(currentFilteredComplaintList);
        return currentFilteredComplaintList;
      }
    }
  }
}

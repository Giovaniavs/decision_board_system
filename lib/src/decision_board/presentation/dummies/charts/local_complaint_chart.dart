import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/widgets/indicator.dart';
import 'package:decision_board_system/src/shared/widgets/purple_long_button.dart';
import 'package:decision_board_system/src/shared/widgets/red_long_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LocalComplaintChart extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const LocalComplaintChart({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  State<StatefulWidget> createState() => LocalComplaintChartState();
}

class LocalComplaintChartState extends State<LocalComplaintChart> {
  late MapEntry<String, int> firstMostStateWithComplaints;
  late MapEntry<String, int> secondMostStateWithComplaints;
  late MapEntry<String, int> thirdMostStateWithComplaints;
  late MapEntry<String, int> fourthMostStateWithComplaints;
  late int firstMostComplaintStatePorcentage;
  late int secondMostComplaintStatePorcentage;
  late int thirdMostComplaintStatePorcentage;
  late int fourthMostComplaintStatePorcentage;
  Map<String, int> statesMap = {};
  int touchedIndex = -1;

  final fieldTextController = TextEditingController();

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

  bool januaryValue = false;
  bool ferbuaryValue = false;
  bool marchValue = false;
  bool aprilValue = false;
  bool mayValue = false;
  bool juneValue = false;
  bool julyValue = false;
  bool augustValue = false;
  bool septemberValue = false;
  bool octoberValue = false;
  bool novemberValue = false;
  bool decemberValue = false;

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

  List<String> keyWordsList = [];

  bool nonAnswered = false;
  bool answered = false;
  bool solved = false;
  bool inReply = false;

  bool mondayValue = false;
  bool tuesdayValue = false;
  bool wednesdayValue = false;
  bool thursdayValue = false;
  bool fridayValue = false;
  bool saturdayValue = false;
  bool sundayValue = false;

  List<Color> gradientColors = [
    GraphColors.contentColorCyan,
    GraphColors.contentColorBlue,
  ];

  bool showFilterByYears = true;
  bool showFilterByMonths = true;
  bool showFilterByDays = true;
  bool showFilterByStates = true;
  bool showFilterByKeyWord = true;
  bool showFilterByWeekday = true;

  @override
  void initState() {
    super.initState();

    currentFilteredComplaintList =
        widget._decisionBoardUseCase.state.complaintList;

    setGraphVariables(currentFilteredComplaintList);
  }

  @override
  Widget build(BuildContext context) {
    if (isAnySelected() == 0) {
      currentFilteredComplaintList =
          widget._decisionBoardUseCase.state.complaintList;

      setGraphVariables(currentFilteredComplaintList);
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: SpacingTokens.tera),
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 500),
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      },
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 10,
                    centerSpaceRadius: 60,
                    sections: showingSections(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: SpacingTokens.hecto,
                right: SpacingTokens.hecto,
                bottom: SpacingTokens.zetta,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Indicator(
                    color: GraphColors.contentColorBlue,
                    text: firstMostStateWithComplaints.key,
                    isSquare: true,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Indicator(
                    color: GraphColors.contentColorYellow,
                    text: secondMostStateWithComplaints.key,
                    isSquare: true,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Indicator(
                    color: GraphColors.contentColorPurple,
                    text: thirdMostStateWithComplaints.key,
                    isSquare: true,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Indicator(
                    color: GraphColors.contentColorGreen,
                    text: fourthMostStateWithComplaints.key,
                    isSquare: true,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: SpacingTokens.deka,
                    horizontal: SpacingTokens.hecto,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filtrar por anos:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: SpacingTokens.deka,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showFilterByYears = !showFilterByYears;
                            });
                          },
                          child: Text(
                            showFilterByYears
                                ? 'Mostrar menos ▼'
                                : 'Mostrar mais ▶︎',
                            style: const TextStyle(
                              color: BaseColors.purpleButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showFilterByYears
                    ? Wrap(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: SpacingTokens.deka,
                    horizontal: SpacingTokens.hecto,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filtrar por meses:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: SpacingTokens.deka,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showFilterByMonths = !showFilterByMonths;
                            });
                          },
                          child: Text(
                            showFilterByMonths
                                ? 'Mostrar menos ▼'
                                : 'Mostrar mais ▶︎',
                            style: const TextStyle(
                              color: BaseColors.purpleButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showFilterByMonths
                    ? Wrap(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: januaryValue,
                                onChanged: (value) => setState(
                                  () {
                                    januaryValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '01');
                                  },
                                ),
                              ),
                              const Text('Janeiro'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: ferbuaryValue,
                                onChanged: (value) => setState(
                                  () {
                                    ferbuaryValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '02');
                                  },
                                ),
                              ),
                              const Text('Fervereiro'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: marchValue,
                                onChanged: (value) => setState(
                                  () {
                                    marchValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '03');
                                  },
                                ),
                              ),
                              const Text('Março'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: aprilValue,
                                onChanged: (value) => setState(
                                  () {
                                    aprilValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '04');
                                  },
                                ),
                              ),
                              const Text('Abril'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: mayValue,
                                onChanged: (value) => setState(
                                  () {
                                    mayValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '05');
                                  },
                                ),
                              ),
                              const Text('Maio'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: juneValue,
                                onChanged: (value) => setState(
                                  () {
                                    juneValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '06');
                                  },
                                ),
                              ),
                              const Text('Junho'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: julyValue,
                                onChanged: (value) => setState(
                                  () {
                                    julyValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '07');
                                  },
                                ),
                              ),
                              const Text('Julho'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: augustValue,
                                onChanged: (value) => setState(
                                  () {
                                    augustValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '08');
                                  },
                                ),
                              ),
                              const Text('Julho'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: septemberValue,
                                onChanged: (value) => setState(
                                  () {
                                    septemberValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '09');
                                  },
                                ),
                              ),
                              const Text('Setembro'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: octoberValue,
                                onChanged: (value) => setState(
                                  () {
                                    octoberValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '10');
                                  },
                                ),
                              ),
                              const Text('Outubro'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: novemberValue,
                                onChanged: (value) => setState(
                                  () {
                                    novemberValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '11');
                                  },
                                ),
                              ),
                              const Text('Novembro'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: decemberValue,
                                onChanged: (value) => setState(
                                  () {
                                    decemberValue = value!;
                                    currentFilteredComplaintList =
                                        applyMonthFilter(value, '12');
                                  },
                                ),
                              ),
                              const Text('Dezembro'),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: SpacingTokens.deka,
                    horizontal: SpacingTokens.hecto,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filtrar por dias:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: SpacingTokens.deka,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showFilterByDays = !showFilterByDays;
                            });
                          },
                          child: Text(
                            showFilterByDays
                                ? 'Mostrar menos ▼'
                                : 'Mostrar mais ▶︎',
                            style: const TextStyle(
                              color: BaseColors.purpleButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showFilterByDays
                    ? Wrap(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                            mainAxisSize: MainAxisSize.min,
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayTwentyFiveValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayTwentyFiveValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "25");
                                      },
                                    ),
                                  ),
                                  const Text('25'),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayTwentyFourValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayTwentyFourValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "24");
                                      },
                                    ),
                                  ),
                                  const Text('24'),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayTwentyThreeValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayTwentyThreeValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "23");
                                      },
                                    ),
                                  ),
                                  const Text('23'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayTwentyTwoValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayTwentyTwoValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "22");
                                  },
                                ),
                              ),
                              const Text('22'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayTwentyOneValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayTwentyOneValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "21");
                                  },
                                ),
                              ),
                              const Text('21'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayTwentyValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayTwentyValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "20");
                                  },
                                ),
                              ),
                              const Text('20'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayNineteenValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayNineteenValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "19");
                                      },
                                    ),
                                  ),
                                  const Text('19'),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayEighteenValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayEighteenValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "18");
                                      },
                                    ),
                                  ),
                                  const Text('18'),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: daySeventeenValue,
                                    onChanged: (value) => setState(
                                      () {
                                        daySeventeenValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "17");
                                      },
                                    ),
                                  ),
                                  const Text('17'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: daySixteenValue,
                                onChanged: (value) => setState(
                                  () {
                                    daySixteenValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "16");
                                  },
                                ),
                              ),
                              const Text('16'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayFifteenValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayFifteenValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "15");
                                  },
                                ),
                              ),
                              const Text('15'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayFourteenValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayFourteenValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "14");
                                  },
                                ),
                              ),
                              const Text('14'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayThirteenValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayThirteenValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "13");
                                  },
                                ),
                              ),
                              const Text('13'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayTwelveValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayTwelveValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "12");
                                  },
                                ),
                              ),
                              const Text('12'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayElevenValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayElevenValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "11");
                                  },
                                ),
                              ),
                              const Text('11'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayTenValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayTenValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "10");
                                      },
                                    ),
                                  ),
                                  const Text('10'),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayNineValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayNineValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "09");
                                      },
                                    ),
                                  ),
                                  const Text('09'),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    value: dayEightValue,
                                    onChanged: (value) => setState(
                                      () {
                                        dayEightValue = value!;
                                        currentFilteredComplaintList =
                                            applyDayFilter(value, "08");
                                      },
                                    ),
                                  ),
                                  const Text('08'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: daySevenValue,
                                onChanged: (value) => setState(
                                  () {
                                    daySevenValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "07");
                                  },
                                ),
                              ),
                              const Text('07'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: daySixValue,
                                onChanged: (value) => setState(
                                  () {
                                    daySixValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "06");
                                  },
                                ),
                              ),
                              const Text('06'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayFiveValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayFiveValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "05");
                                  },
                                ),
                              ),
                              const Text('05'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayFourValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayFourValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "04");
                                  },
                                ),
                              ),
                              const Text('04'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayThreeValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayThreeValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "03");
                                  },
                                ),
                              ),
                              const Text('03'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayTwoValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayTwoValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "02");
                                  },
                                ),
                              ),
                              const Text('02'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: dayOneValue,
                                onChanged: (value) => setState(
                                  () {
                                    dayOneValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayFilter(value, "01");
                                  },
                                ),
                              ),
                              const Text('01'),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: SpacingTokens.deka,
                    horizontal: SpacingTokens.hecto,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filtrar por dia da semana:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: SpacingTokens.deka,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showFilterByWeekday = !showFilterByWeekday;
                            });
                          },
                          child: Text(
                            showFilterByStates
                                ? 'Mostrar menos ▼'
                                : 'Mostrar mais ▶︎',
                            style: const TextStyle(
                              color: BaseColors.purpleButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showFilterByWeekday
                    ? Wrap(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: mondayValue,
                                onChanged: (value) => setState(
                                  () {
                                    mondayValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayweekFilter(value, 1);
                                  },
                                ),
                              ),
                              const Text('Segunda-feira'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: tuesdayValue,
                                onChanged: (value) => setState(
                                  () {
                                    tuesdayValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayweekFilter(value, 2);
                                  },
                                ),
                              ),
                              const Text('Terça-feira'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: wednesdayValue,
                                onChanged: (value) => setState(
                                  () {
                                    wednesdayValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayweekFilter(value, 3);
                                  },
                                ),
                              ),
                              const Text('Quarta-feira'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: thursdayValue,
                                onChanged: (value) => setState(
                                  () {
                                    thursdayValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayweekFilter(value, 4);
                                  },
                                ),
                              ),
                              const Text('Quinta-feira'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: fridayValue,
                                onChanged: (value) => setState(
                                  () {
                                    fridayValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayweekFilter(value, 5);
                                  },
                                ),
                              ),
                              const Text('Sexta-feira'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: saturdayValue,
                                onChanged: (value) => setState(
                                  () {
                                    saturdayValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayweekFilter(value, 6);
                                  },
                                ),
                              ),
                              const Text('Sábado'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: sundayValue,
                                onChanged: (value) => setState(
                                  () {
                                    sundayValue = value!;
                                    currentFilteredComplaintList =
                                        applyDayweekFilter(value, 7);
                                  },
                                ),
                              ),
                              const Text('Domingo'),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: SpacingTokens.deka,
                    horizontal: SpacingTokens.hecto,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filtrar por status:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: SpacingTokens.deka,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showFilterByStates = !showFilterByStates;
                            });
                          },
                          child: Text(
                            showFilterByStates
                                ? 'Mostrar menos ▼'
                                : 'Mostrar mais ▶︎',
                            style: const TextStyle(
                              color: BaseColors.purpleButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showFilterByStates
                    ? Wrap(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: nonAnswered,
                                onChanged: (value) => setState(
                                  () {
                                    nonAnswered = value!;
                                    currentFilteredComplaintList =
                                        applyStatusFilter(
                                            value, 'Não respondida');
                                  },
                                ),
                              ),
                              const Text('Não respondida'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: answered,
                                onChanged: (value) => setState(
                                  () {
                                    answered = value!;
                                    currentFilteredComplaintList =
                                        applyStatusFilter(value, 'Respondida');
                                  },
                                ),
                              ),
                              const Text('Respondida'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: solved,
                                onChanged: (value) => setState(
                                  () {
                                    solved = value!;
                                    currentFilteredComplaintList =
                                        applyStatusFilter(value, 'Resolvido');
                                  },
                                ),
                              ),
                              const Text('Resolvido'),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: inReply,
                                onChanged: (value) => setState(
                                  () {
                                    inReply = value!;
                                    currentFilteredComplaintList =
                                        applyStatusFilter(value, 'Em réplica');
                                  },
                                ),
                              ),
                              const Text('Em réplica'),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: SpacingTokens.deka,
                    horizontal: SpacingTokens.hecto,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filtrar por palavras chave:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          left: SpacingTokens.deka,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              showFilterByKeyWord = !showFilterByKeyWord;
                            });
                          },
                          child: Text(
                            showFilterByKeyWord
                                ? 'Mostrar menos ▼'
                                : 'Mostrar mais ▶︎',
                            style: const TextStyle(
                              color: BaseColors.purpleButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showFilterByKeyWord
                    ? Padding(
                        padding: const EdgeInsets.only(
                          left: SpacingTokens.hecto,
                          right: SpacingTokens.hecto,
                          bottom: SpacingTokens.kilo,
                        ),
                        child: TextField(
                          controller: fieldTextController,
                          decoration: const InputDecoration(
                            hintText:
                                'Exemplo: Adicionar a palavra "Defeituoso"',
                          ),
                          onSubmitted: (keyWord) {
                            if (!keyWordsList.contains(keyWord)) {
                              setState(() {
                                keyWordsList.add(keyWord);

                                currentFilteredComplaintList =
                                    applyKeyWordFilter(true, keyWord);
                              });
                            } else {
                              final snackBar = SnackBar(
                                content: const Text(
                                    'Essa palavra já foi adicionada!'),
                                action: SnackBarAction(
                                  label: 'OK',
                                  onPressed: () {},
                                ),
                              );

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }

                            fieldTextController.clear();
                          },
                        ),
                      )
                    : Container(),
                showFilterByKeyWord
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: SpacingTokens.hecto,
                        ),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: keyWordsList.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(keyWordsList[index]),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentFilteredComplaintList =
                                              applyKeyWordFilter(
                                            false,
                                            keyWordsList[index],
                                          );
                                        });
                                      },
                                      child: const Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  thickness: 1,
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(
                          bottom: SpacingTokens.kilo,
                        ),
                        child: Container(),
                      ),
              ],
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: SpacingTokens.hecto,
                ),
                child: PurpleLongButton(
                  buttonText:
                      'Ver reclamações filtradas: ${currentFilteredComplaintList.length}',
                  isLoading: false,
                  onPressed: () {
                    widget._decisionBoardUseCase.add(
                      GoToFilteredComplaintsFlow(
                        filteredComplaintList: currentFilteredComplaintList,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: SpacingTokens.hecto,
                ),
                child: RedLongButton(
                  buttonText: 'Resetar filtros',
                  isLoading: false,
                  onPressed: () {
                    setState(() {
                      resetFilter();
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      4,
      (i) {
        final isTouched = i == touchedIndex;
        final fontSize = isTouched ? 25.0 : 16.0;
        final radius = isTouched ? 60.0 : 50.0;
        const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: GraphColors.contentColorBlue,
              value:
                  firstMostComplaintStatePorcentage.toDouble().ceilToDouble(),
              title: '$firstMostComplaintStatePorcentage%',
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: GraphColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 1:
            return PieChartSectionData(
              color: GraphColors.contentColorYellow,
              value:
                  secondMostComplaintStatePorcentage.toDouble().ceilToDouble(),
              title: '$secondMostComplaintStatePorcentage%',
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: GraphColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 2:
            return PieChartSectionData(
              color: GraphColors.contentColorPurple,
              value:
                  thirdMostComplaintStatePorcentage.toDouble().ceilToDouble(),
              title: '$thirdMostComplaintStatePorcentage%',
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: GraphColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          case 3:
            return PieChartSectionData(
              color: GraphColors.contentColorGreen,
              value:
                  fourthMostComplaintStatePorcentage.toDouble().ceilToDouble(),
              title: '$fourthMostComplaintStatePorcentage%',
              radius: radius,
              titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: GraphColors.mainTextColor1,
                shadows: shadows,
              ),
            );
          default:
            throw Error();
        }
      },
    );
  }

  int isAnySelected() {
    List<bool> boolList = [
      currentYearValue,
      pastYearValue,
      pastTwoYearsValue,
      pastThreeYearsValue,
      pastFourYearsValue,
      pastFiveYearsValue,
      januaryValue,
      ferbuaryValue,
      marchValue,
      aprilValue,
      mayValue,
      juneValue,
      julyValue,
      augustValue,
      septemberValue,
      octoberValue,
      novemberValue,
      decemberValue,
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
      nonAnswered,
      answered,
      solved,
      inReply,
      keyWordsList.isEmpty ? false : true,
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

  List<String> wichMonthsAreSelected() {
    List<String> selectedMonths = [];

    if (januaryValue) {
      selectedMonths.add("01");
    }
    if (ferbuaryValue) {
      selectedMonths.add("02");
    }
    if (marchValue) {
      selectedMonths.add("03");
    }
    if (aprilValue) {
      selectedMonths.add("04");
    }
    if (mayValue) {
      selectedMonths.add("05");
    }
    if (juneValue) {
      selectedMonths.add("06");
    }
    if (julyValue) {
      selectedMonths.add("07");
    }
    if (augustValue) {
      selectedMonths.add("08");
    }
    if (septemberValue) {
      selectedMonths.add("09");
    }
    if (octoberValue) {
      selectedMonths.add("10");
    }
    if (novemberValue) {
      selectedMonths.add("11");
    }
    if (decemberValue) {
      selectedMonths.add("12");
    }

    return selectedMonths;
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

  List<String> wichStatesAreSelected() {
    List<String> selectedStates = [];

    if (nonAnswered) {
      selectedStates.add('Não respondida');
    }

    if (answered) {
      selectedStates.add('Respondida');
    }
    if (solved) {
      selectedStates.add('Resolvido');
    }
    if (inReply) {
      selectedStates.add('Em réplica');
    }

    return selectedStates;
  }

  List<int> wichWeekdaysAreSelected() {
    List<int> selectedWeekdays = [];

    if (mondayValue) {
      selectedWeekdays.add(1);
    }

    if (tuesdayValue) {
      selectedWeekdays.add(2);
    }
    if (wednesdayValue) {
      selectedWeekdays.add(3);
    }
    if (thursdayValue) {
      selectedWeekdays.add(4);
    }
    if (fridayValue) {
      selectedWeekdays.add(5);
    }
    if (saturdayValue) {
      selectedWeekdays.add(6);
    }
    if (sundayValue) {
      selectedWeekdays.add(7);
    }

    return selectedWeekdays;
  }

  List<ComplaintModel> addSelectedItemsFilter() {
    List<ComplaintModel> filteredComplaintList = [];

    for (ComplaintModel element
        in widget._decisionBoardUseCase.state.complaintList) {
      if (passesFilters(element)) {
        filteredComplaintList.add(element);
      }
    }

    setGraphVariables(filteredComplaintList);
    return filteredComplaintList;
  }

  bool passesFilters(ComplaintModel element) {
    return passesYearFilter(element) &&
        passesDayFilter(element) &&
        passesMonthFilter(element) &&
        passesStatusFilter(element) &&
        passesKeyWordFilter(element) &&
        passesWeekdayFilter(element);
  }

  bool passesYearFilter(ComplaintModel element) {
    List<String> selectedYears = wichYearsAreSelected();
    return selectedYears.isEmpty ||
        selectedYears.contains(element.dateTime.substring(0, 4));
  }

  bool passesMonthFilter(ComplaintModel element) {
    List<String> selectedMonths = wichMonthsAreSelected();
    return selectedMonths.isEmpty ||
        selectedMonths.contains(element.dateTime.substring(5, 7));
  }

  bool passesDayFilter(ComplaintModel element) {
    List<String> selectedDays = wichDaysAreSelected();
    return selectedDays.isEmpty ||
        selectedDays.contains(element.dateTime.substring(8, 10));
  }

  bool passesStatusFilter(ComplaintModel element) {
    List<String> selectedStates = wichStatesAreSelected();
    return selectedStates.isEmpty || selectedStates.contains(element.status);
  }

  bool passesKeyWordFilter(ComplaintModel element) {
    String title = element.title.toLowerCase();
    String complaintBodyText = element.text.toLowerCase();
    bool contains = false;

    for (String keyWord in keyWordsList) {
      if (title.contains(keyWord.toLowerCase()) ||
          complaintBodyText.contains(keyWord.toLowerCase())) {
        contains = true;
      }
    }
    return keyWordsList.isEmpty || contains;
  }

  bool passesWeekdayFilter(ComplaintModel element) {
    List<int> selectedStates = wichWeekdaysAreSelected();
    int weekday = DateTime.parse(element.dateTime).weekday;

    return selectedStates.isEmpty || selectedStates.contains(weekday);
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

        setGraphVariables(filteredComplaintList);
        return filteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      return addSelectedItemsFilter();
    }
  }

  List<ComplaintModel> applyMonthFilter(bool value, String month) {
    if (value) {
      if (isAnySelected() == 1) {
        List<ComplaintModel> filteredComplaintList = [];

        for (ComplaintModel element
            in widget._decisionBoardUseCase.state.complaintList) {
          if (element.dateTime.substring(5, 7) == month) {
            filteredComplaintList.add(element);
          }
        }

        setGraphVariables(filteredComplaintList);
        return filteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      return addSelectedItemsFilter();
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

        setGraphVariables(filteredComplaintList);
        return filteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      return addSelectedItemsFilter();
    }
  }

  List<ComplaintModel> applyStatusFilter(bool value, String day) {
    if (value) {
      if (isAnySelected() == 1) {
        List<ComplaintModel> filteredComplaintList = [];

        for (ComplaintModel element
            in widget._decisionBoardUseCase.state.complaintList) {
          if (element.status == day) {
            filteredComplaintList.add(element);
          }
        }

        setGraphVariables(filteredComplaintList);
        return filteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      return addSelectedItemsFilter();
    }
  }

  List<ComplaintModel> applyKeyWordFilter(bool value, String keyWord) {
    if (value) {
      if (isAnySelected() == 1) {
        List<ComplaintModel> filteredComplaintList = [];

        for (ComplaintModel element
            in widget._decisionBoardUseCase.state.complaintList) {
          String title = element.title.toLowerCase();

          String complaintBodyText = element.text.toLowerCase();

          if (title.contains(keyWord.toLowerCase()) ||
              complaintBodyText.contains(keyWord.toLowerCase())) {
            filteredComplaintList.add(element);
          }
        }

        setGraphVariables(filteredComplaintList);
        return filteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      keyWordsList.remove(keyWord);

      return addSelectedItemsFilter();
    }
  }

  List<ComplaintModel> applyDayweekFilter(bool value, int weekdayCode) {
    if (value) {
      if (isAnySelected() == 1) {
        List<ComplaintModel> filteredComplaintList = [];

        for (ComplaintModel element
            in widget._decisionBoardUseCase.state.complaintList) {
          String dateTime = element.dateTime;

          int weekday = DateTime.parse(dateTime).weekday;

          if (weekday == weekdayCode) {
            filteredComplaintList.add(element);
          }
        }

        setGraphVariables(filteredComplaintList);
        return filteredComplaintList;
      } else {
        return addSelectedItemsFilter();
      }
    } else {
      return addSelectedItemsFilter();
    }
  }

  void resetFilter() {
    currentFilteredComplaintList = [];

    currentYearValue = false;
    pastYearValue = false;
    pastTwoYearsValue = false;
    pastThreeYearsValue = false;
    pastFourYearsValue = false;
    pastFiveYearsValue = false;

    januaryValue = false;
    ferbuaryValue = false;
    marchValue = false;
    aprilValue = false;
    mayValue = false;
    juneValue = false;
    julyValue = false;
    augustValue = false;
    septemberValue = false;
    octoberValue = false;
    novemberValue = false;
    decemberValue = false;

    dayOneValue = false;
    dayTwoValue = false;
    dayThreeValue = false;
    dayFourValue = false;
    dayFiveValue = false;
    daySixValue = false;
    daySevenValue = false;
    dayEightValue = false;
    dayNineValue = false;
    dayTenValue = false;
    dayElevenValue = false;
    dayTwelveValue = false;
    dayThirteenValue = false;
    dayFourteenValue = false;
    dayFifteenValue = false;
    daySixteenValue = false;
    daySeventeenValue = false;
    dayEighteenValue = false;
    dayNineteenValue = false;
    dayTwentyValue = false;
    dayTwentyOneValue = false;
    dayTwentyTwoValue = false;
    dayTwentyThreeValue = false;
    dayTwentyFourValue = false;
    dayTwentyFiveValue = false;
    dayTwentySixValue = false;
    dayTwentySevenValue = false;
    dayTwentyEightValue = false;
    dayTwentyNineValue = false;
    dayThirtyValue = false;
    dayThirtyOneValue = false;

    keyWordsList = [];

    nonAnswered = false;
    answered = false;
    solved = false;
    inReply = false;

    mondayValue = false;
    tuesdayValue = false;
    wednesdayValue = false;
    thursdayValue = false;
    fridayValue = false;
    saturdayValue = false;
    sundayValue = false;

    showFilterByYears = true;
    showFilterByMonths = true;
    showFilterByDays = true;
    showFilterByStates = true;
    showFilterByKeyWord = true;
    showFilterByWeekday = true;
  }

  void setGraphVariables(List<ComplaintModel> complaintList) {
    if (complaintList.isEmpty) {
      statesMap = {};

      firstMostStateWithComplaints = const MapEntry('', 0);

      secondMostStateWithComplaints = const MapEntry('', 0);

      thirdMostStateWithComplaints = const MapEntry('', 0);

      fourthMostStateWithComplaints = const MapEntry('', 0);

      firstMostComplaintStatePorcentage = 0;

      secondMostComplaintStatePorcentage = 0;

      thirdMostComplaintStatePorcentage = 0;

      fourthMostComplaintStatePorcentage = 0;
    } else {
      statesMap = {};

      for (var element in complaintList) {
        if (statesMap.containsKey(element.localization)) {
          statesMap[element.localization] =
              statesMap[element.localization]! + 1;
        } else {
          statesMap[element.localization] = 1;
        }
      }

      List sortedListOfComplaints = statesMap.values.toList();
      sortedListOfComplaints.sort((a, b) => b.compareTo(a));

      firstMostStateWithComplaints = statesMap.entries.firstWhere((element) {
        return element.value == sortedListOfComplaints[0];
      });
      if (sortedListOfComplaints.length < 2) {
        secondMostStateWithComplaints = const MapEntry('', 0);
      } else {
        secondMostStateWithComplaints = statesMap.entries.firstWhere((element) {
          if (element.key != firstMostStateWithComplaints.key) {
            return element.value == sortedListOfComplaints[1];
          } else {
            return false;
          }
        });
      }

      if (sortedListOfComplaints.length < 3) {
        thirdMostStateWithComplaints = const MapEntry('', 0);
      } else {
        thirdMostStateWithComplaints = statesMap.entries.firstWhere((element) {
          if (element.key != firstMostStateWithComplaints.key &&
              element.key != secondMostStateWithComplaints.key) {
            return element.value == sortedListOfComplaints[2];
          } else {
            return false;
          }
        });
      }

      if (sortedListOfComplaints.length < 4) {
        fourthMostStateWithComplaints = const MapEntry('', 0);
      } else {
        fourthMostStateWithComplaints = statesMap.entries.firstWhere((element) {
          if (element.key != firstMostStateWithComplaints.key &&
              element.key != secondMostStateWithComplaints.key &&
              element.key != thirdMostStateWithComplaints.key) {
            return element.value == sortedListOfComplaints[3];
          } else {
            return false;
          }
        });
      }

      firstMostComplaintStatePorcentage =
          (firstMostStateWithComplaints.value / complaintList.length * 100)
              .toInt();

      secondMostComplaintStatePorcentage =
          (secondMostStateWithComplaints.value / complaintList.length * 100)
              .toInt();

      thirdMostComplaintStatePorcentage =
          (thirdMostStateWithComplaints.value / complaintList.length * 100)
              .toInt();

      fourthMostComplaintStatePorcentage =
          (fourthMostStateWithComplaints.value / complaintList.length * 100)
              .toInt();
    }
  }
}

import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/widgets/indicator.dart';
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
  late String firstMostComplaintStatePorcentage;
  late String secondMostComplaintStatePorcentage;
  late String thirdMostComplaintStatePorcentage;
  late String fourthMostComplaintStatePorcentage;
  Map<String, int> statesMap = {};

  @override
  void initState() {
    super.initState();

    for (var element in widget._decisionBoardUseCase.state.complaintList) {
      if (statesMap.containsKey(element.localization)) {
        statesMap[element.localization] = statesMap[element.localization]! + 1;
      } else {
        statesMap[element.localization] = 1;
      }
    }

    List sortedListOfComplaints = statesMap.values.toList();
    sortedListOfComplaints.sort((a, b) => b.compareTo(a));

    firstMostStateWithComplaints = statesMap.entries.firstWhere((element) {
      return element.value == sortedListOfComplaints[0];
    });
    secondMostStateWithComplaints = statesMap.entries.firstWhere((element) {
      return element.value == sortedListOfComplaints[1];
    });
    thirdMostStateWithComplaints = statesMap.entries.firstWhere((element) {
      return element.value == sortedListOfComplaints[2];
    });
    fourthMostStateWithComplaints = statesMap.entries.firstWhere((element) {
      return element.value == sortedListOfComplaints[3];
    });

    firstMostComplaintStatePorcentage =
        "${(firstMostStateWithComplaints.value / widget._decisionBoardUseCase.state.complaintList.length * 100).toInt()}%";

    secondMostComplaintStatePorcentage =
        "${(secondMostStateWithComplaints.value / widget._decisionBoardUseCase.state.complaintList.length * 100).toInt()}%";

    thirdMostComplaintStatePorcentage =
        "${(thirdMostStateWithComplaints.value / widget._decisionBoardUseCase.state.complaintList.length * 100).toInt()}%";

    fourthMostComplaintStatePorcentage =
        "${(fourthMostStateWithComplaints.value / widget._decisionBoardUseCase.state.complaintList.length * 100).toInt()}%";
  }

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
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
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
              const SizedBox(
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: GraphColors.contentColorBlue,
            value: 40,
            title: firstMostComplaintStatePorcentage,
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
            value: 30,
            title: secondMostComplaintStatePorcentage,
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
            value: 15,
            title: thirdMostComplaintStatePorcentage,
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
            value: 15,
            title: fourthMostComplaintStatePorcentage,
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
    });
  }
}

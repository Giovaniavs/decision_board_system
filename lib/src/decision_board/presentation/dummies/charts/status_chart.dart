import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/widgets/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatusChart extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const StatusChart({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  State<StatefulWidget> createState() => StatusChartState();
}

class StatusChartState extends State<StatusChart> {
  late int nonAnsweredStatusPorcentage;
  late int answeredStatusPorcentage;
  late int solvedStatusPorcentage;
  late int replyStatusPorcentage;
  late int nonSolvedStatusPorcentage;
  Map<String, int> statusMap = {};
  int touchedIndex = -1;

  @override
  void initState() {
    super.initState();

    for (var element in widget._decisionBoardUseCase.state.complaintList) {
      if (statusMap.containsKey(element.status)) {
        statusMap[element.status] = statusMap[element.status]! + 1;
      } else {
        statusMap[element.status] = 1;
      }
    }

    nonAnsweredStatusPorcentage = (statusMap['Não respondida']! /
            widget._decisionBoardUseCase.state.complaintList.length *
            100)
        .toInt();

    answeredStatusPorcentage = (statusMap['Respondida']! /
            widget._decisionBoardUseCase.state.complaintList.length *
            100)
        .toInt();

    solvedStatusPorcentage = (statusMap['Resolvido']! /
            widget._decisionBoardUseCase.state.complaintList.length *
            100)
        .toInt();

    replyStatusPorcentage = (statusMap['Em réplica']! /
            widget._decisionBoardUseCase.state.complaintList.length *
            100)
        .toInt();

    nonSolvedStatusPorcentage = (statusMap['Não resolvido']! /
            widget._decisionBoardUseCase.state.complaintList.length *
            100)
        .toInt();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 28,
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
                  startDegreeOffset: 180,
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 1,
                  centerSpaceRadius: 0,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: SpacingTokens.deka),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Indicator(
                  color: GraphColors.contentColorBlue,
                  text: touchedIndex == 0
                      ? '$nonAnsweredStatusPorcentage%'
                      : 'Não respondida',
                  isSquare: false,
                  size: touchedIndex == 0 ? 18 : 16,
                  textColor: Colors.black,
                ),
                Indicator(
                  color: GraphColors.contentColorYellow,
                  text: touchedIndex == 1
                      ? '$answeredStatusPorcentage%'
                      : 'Respondida',
                  isSquare: false,
                  size: touchedIndex == 1 ? 18 : 16,
                  textColor: Colors.black,
                ),
                Indicator(
                  color: GraphColors.contentColorPink,
                  text: touchedIndex == 2
                      ? '$solvedStatusPorcentage%'
                      : 'Resolvido',
                  isSquare: false,
                  size: touchedIndex == 2 ? 18 : 16,
                  textColor: Colors.black,
                ),
                Indicator(
                  color: GraphColors.contentColorGreen,
                  text: touchedIndex == 3
                      ? '$replyStatusPorcentage%'
                      : 'Em réplica',
                  isSquare: false,
                  size: touchedIndex == 3 ? 18 : 16,
                  textColor: Colors.black,
                ),
                Indicator(
                  color: GraphColors.contentColorRed,
                  text: touchedIndex == 4
                      ? '$nonSolvedStatusPorcentage%'
                      : 'Não resolvido',
                  isSquare: false,
                  size: touchedIndex == 4 ? 18 : 16,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      5,
      (i) {
        final isTouched = i == touchedIndex;
        const color0 = GraphColors.contentColorBlue;
        const color1 = GraphColors.contentColorYellow;
        const color2 = GraphColors.contentColorPink;
        const color3 = GraphColors.contentColorGreen;
        const color4 = GraphColors.contentColorRed;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: nonAnsweredStatusPorcentage.toDouble(),
              title: '',
              radius: 80,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? const BorderSide(
                      color: GraphColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: GraphColors.contentColorWhite.withOpacity(0)),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: answeredStatusPorcentage.toDouble(),
              title: '',
              radius: 65,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? const BorderSide(
                      color: GraphColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: GraphColors.contentColorWhite.withOpacity(0)),
            );
          case 2:
            return PieChartSectionData(
              color: color2,
              value: solvedStatusPorcentage.toDouble(),
              title: '',
              radius: 60,
              titlePositionPercentageOffset: 0.6,
              borderSide: isTouched
                  ? const BorderSide(
                      color: GraphColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: GraphColors.contentColorWhite.withOpacity(0)),
            );
          case 3:
            return PieChartSectionData(
              color: color3,
              value: replyStatusPorcentage.toDouble(),
              title: '',
              radius: 70,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? const BorderSide(
                      color: GraphColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: GraphColors.contentColorWhite.withOpacity(0)),
            );
          case 4:
            return PieChartSectionData(
              color: color4,
              value: nonSolvedStatusPorcentage.toDouble(),
              title: '',
              radius: 70,
              titlePositionPercentageOffset: 0.55,
              borderSide: isTouched
                  ? const BorderSide(
                      color: GraphColors.contentColorWhite, width: 6)
                  : BorderSide(
                      color: GraphColors.contentColorWhite.withOpacity(0)),
            );
          default:
            throw Error();
        }
      },
    );
  }
}

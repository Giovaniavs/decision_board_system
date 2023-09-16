import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/charts/answered_by_month_chart.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/charts/local_complaint_chart.dart';
import 'package:decision_board_system/src/decision_board/presentation/dummies/charts/status_chart.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:flutter/material.dart';

class ChartsScreen extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const ChartsScreen({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  State<ChartsScreen> createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  late String _selectedChartTitle;
  late Widget _selectedChartWidget;

  @override
  void initState() {
    widget._decisionBoardUseCase.state.chartSelected.maybeWhen(
      answeredByMonthChartFlow: () {
        _selectedChartTitle = "Reclamações por Meses";
        _selectedChartWidget = AnsweredByMonthChart(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        );
      },
      localComplaintChartFlow: () {
        _selectedChartTitle = "Reclamações por Estados";
        _selectedChartWidget = LocalComplaintChart(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        );
      },
      statusChartFlow: () {
        _selectedChartTitle = "Gráficos por Status da Reclamação";
        _selectedChartWidget = StatusChart(
          decisionBoardUseCase: widget._decisionBoardUseCase,
        );
      },
      orElse: () {
        _selectedChartTitle = "Nenhum gráfico selecionado";
        _selectedChartWidget = Container();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _selectedChartTitle,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: BaseColors.primary,
        leading: Builder(
          builder: (BuildContext builderContext) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                widget._decisionBoardUseCase.add(
                  const GoToChartsListScreenFlow(),
                );
              },
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: _selectedChartWidget,
      ),
    );
  }
}

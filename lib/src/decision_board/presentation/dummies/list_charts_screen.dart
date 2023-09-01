import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/widgets/purple_long_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListChartsScreen extends StatelessWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const ListChartsScreen({
    Key? key,
    required DecisionBoardUseCase decisionBoardUseCase,
  })  : _decisionBoardUseCase = decisionBoardUseCase,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DecisionBoardUseCase, DecisionBoardState>(
      bloc: _decisionBoardUseCase,
      builder: _builder,
    );
  }

  Widget _builder(BuildContext context, DecisionBoardState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Gráficos",
          style: TextStyle(color: Colors.black),
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
                _decisionBoardUseCase.add(
                  const GoBackToHomeFlow(),
                );
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SpacingTokens.deka,
          vertical: SpacingTokens.deka,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: SpacingTokens.deka),
                  child: PurpleLongButton(
                    buttonText: 'Reclamações por trimestre',
                    isLoading: false,
                    onPressed: () {
                      _decisionBoardUseCase.add(
                        const GoToChartsScreen(
                          chartSelected:
                              ChartSelected.answeredByTrimesterChartFlow(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: SpacingTokens.deka),
                  child: PurpleLongButton(
                    buttonText: 'Reclamações por Estados',
                    isLoading: false,
                    onPressed: () {
                      _decisionBoardUseCase.add(
                        const GoToChartsScreen(
                          chartSelected:
                              ChartSelected.localComplaintChartFlow(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: SpacingTokens.deka),
                  child: PurpleLongButton(
                    buttonText: 'Gráficos por Status da Reclamação',
                    isLoading: false,
                    onPressed: () {
                      _decisionBoardUseCase.add(
                        const GoToChartsScreen(
                          chartSelected: ChartSelected.statusChartFlow(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: SpacingTokens.deka),
                  child: PurpleLongButton(
                    buttonText: 'Reclamações por Ano',
                    isLoading: false,
                    onPressed: () {
                      _decisionBoardUseCase.add(
                        const GoToChartsScreen(
                          chartSelected: ChartSelected.timeBasedChartFlow(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

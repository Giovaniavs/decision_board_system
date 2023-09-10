import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/utils/date_time.dart';
import 'package:flutter/material.dart';

class FilteredComplaintsScreen extends StatelessWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const FilteredComplaintsScreen({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  Widget build(BuildContext context) {
    List<ComplaintModel> data =
        _decisionBoardUseCase.state.filteredComplaintList;

    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text(
          "Reclamações filtradas: ${data.length}",
          style: const TextStyle(color: Colors.black),
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
                  GoToChartsScreen(
                    chartSelected: _decisionBoardUseCase.state.chartSelected,
                  ),
                );
              },
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (_, index) {
          return Card(
            margin: const EdgeInsets.all(3),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(
                          text: 'ID: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${data[index].complaintId}\n',
                          style: const TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: 'Título: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${data[index].title}\n',
                          style: const TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: 'Data: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              '${formatDateTimeToHomeScreen(data[index].dateTime)}\n',
                          style: const TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: 'Local: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${data[index].localization}\n',
                          style: const TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: 'Status: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${data[index].status}\n',
                          style: const TextStyle(color: Colors.black),
                        ),
                        const TextSpan(
                          text: 'Texto: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '${data[index].text}\n',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

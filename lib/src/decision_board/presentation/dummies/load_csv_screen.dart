import 'package:csv/csv.dart';
import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoadCsvScreen extends StatelessWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const LoadCsvScreen({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  Widget build(BuildContext context) {
    List<ComplaintModel> data = _decisionBoardUseCase.state.complaintList;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Leitor de CSV"),
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
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
            child: Column(
              children: [
                Text(data[index].complaintId),
                Text(data[index].title),
                Text(data[index].dateTime),
                Text(data[index].localization),
                Text(data[index].status),
                Text(data[index].text),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const HomeScreen({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  Widget build(BuildContext context) {
    List<ComplaintModel> data = _decisionBoardUseCase.state.complaintList;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: const Text(
          "Reclamações",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: BaseColors.primary,
        leading: Builder(
          builder: (BuildContext builderContext) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: BaseColors.primary,
              child: const Padding(
                padding: EdgeInsets.only(bottom: SpacingTokens.deka),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "MeChart",
                    )
                  ],
                ),
              ),
            )
          ],
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

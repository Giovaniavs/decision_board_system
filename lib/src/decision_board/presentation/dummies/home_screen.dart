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
                          text: '${data[index].dateTime}\n',
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

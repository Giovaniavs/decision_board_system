import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/data/models/complaint_model.dart';
import 'package:decision_board_system/src/shared/design_system/assets/db_images.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/typography_tokens.dart';
import 'package:decision_board_system/src/shared/utils/date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeScreen extends StatelessWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const HomeScreen({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    List<ComplaintModel> data = _decisionBoardUseCase.state.complaintList;

    return Scaffold(
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: const Text(
          "Reclamações",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
      drawer: Drawer(decisionBoardUseCase: _decisionBoardUseCase),
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

class Drawer extends StatelessWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const Drawer({
    super.key,
    required DecisionBoardUseCase decisionBoardUseCase,
  }) : _decisionBoardUseCase = decisionBoardUseCase;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kIsWeb
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            30,
          ),
          bottomRight: Radius.circular(
            30,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: BaseColors.primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  30,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: SpacingTokens.deka),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: SpacingTokens.deka,
                      right: SpacingTokens.deka,
                    ),
                    child: Text(
                      "MeChart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: FontSizeTokens.mega,
                      ),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        DBImages.logoDecisionBoardSystem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _decisionBoardUseCase.add(
                          const GoToChartsListScreenFlow(),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(255, 172, 172, 172),
                              width: 0.5,
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Gráfcos',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: FontSizeTokens.kilo,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: SpacingTokens.kilo,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        BaseColors.purpleButton,
                      ),
                    ),
                    child: const SizedBox(
                      width: 100,
                      child: Center(
                        child: Text(
                          'Sair',
                        ),
                      ),
                    ),
                    onPressed: () {
                      _decisionBoardUseCase.add(
                        const GoBackToUploadData(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

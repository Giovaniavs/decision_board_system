import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/widgets/purple_long_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';

class UploadDatabaseScreen extends StatefulWidget {
  final DecisionBoardUseCase _decisionBoardUseCase;

  const UploadDatabaseScreen({
    Key? key,
    required DecisionBoardUseCase decisionBoardUseCase,
  })  : _decisionBoardUseCase = decisionBoardUseCase,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _UploadDatabaseScreenState();
}

class _UploadDatabaseScreenState extends State<UploadDatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DecisionBoardUseCase, DecisionBoardState>(
      bloc: widget._decisionBoardUseCase,
      builder: _builder,
    );
  }

  Widget _builder(BuildContext context, DecisionBoardState state) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SpacingTokens.hecto,
            vertical: SpacingTokens.kilo,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: SpacingTokens.kilo,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "O primeiro \n passo é \n adicionar a \n base de dados!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(255, 107, 107, 107),
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                PurpleLongButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      if (result.files.first.extension! == "csv") {
                        print("Arquivo válido");
                      } else {
                        dealWithArchiveTypeError();
                      }
                    }
                  },
                  buttonText: "Upload",
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: BaseColors.primary,
    );
  }

  void dealWithCsvStructure() {}

  void dealWithArchiveTypeError() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Erro ao carregar arquivo'),
          content: const Text(
            'O arquivo selecionado não é um arquivo CSV.',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/widgets/purple_long_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/color_tokens.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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
  bool isLoading = false;

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
                  buttonText: "Upload",
                  isLoading: isLoading,
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });

                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      if (result.files.first.extension! == "csv") {
                        dealWithCsvStructure(result);
                      } else {
                        setState(() {
                          isLoading = false;
                        });
                        dealWithArchiveTypeError(
                          title: 'Erro ao carregar arquivo',
                          content:
                              "O arquivo selecionado não é um arquivo CSV.",
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: BaseColors.primary,
    );
  }

  void dealWithCsvStructure(FilePickerResult file) async {
    try {
      List<List<dynamic>> formatedData = [];

      if (kIsWeb) {
        String bytes = utf8.decode(file.files[0].bytes!.toList());

        formatedData = const CsvToListConverter().convert(bytes);
      } else {
        File localFile = File(file.files.first.path!);

        String rawData = await localFile.readAsString();

        formatedData = const CsvToListConverter().convert(rawData);
      }

      bool identificador =
          formatedData[0][1].toString() == "identificador" ? true : false;
      bool titulo = formatedData[0][2].toString() == "titulo" ? true : false;
      bool datahora =
          formatedData[0][3].toString() == "datahora" ? true : false;
      bool local = formatedData[0][4].toString() == "local" ? true : false;
      bool status = formatedData[0][5].toString() == "status" ? true : false;
      bool texto = formatedData[0][6].toString() == "texto" ? true : false;

      if (identificador && titulo && datahora && local && status && texto) {
        // Remove headers and send the pure data
        formatedData.removeAt(0);

        widget._decisionBoardUseCase.add(
          GoToHome(formatedData: formatedData),
        );
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });

      dealWithArchiveTypeError(
        title: 'Erro ao carregar arquivo',
        content: 'O arquivo selecionado não possui a estrutura correta.',
      );
    }
  }

  void dealWithArchiveTypeError({
    required String title,
    required String content,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(
            content,
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

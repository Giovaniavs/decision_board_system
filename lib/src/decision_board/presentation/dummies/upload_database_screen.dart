import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
import 'package:decision_board_system/src/shared/design_system/tokens/spacing_tokens.dart';
import 'package:decision_board_system/src/shared/widgets/purple_long_button.dart';
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
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: SpacingTokens.kilo,
                  left: SpacingTokens.kilo,
                ),
                child: SizedBox(
                  width: 200,
                  child: Text(
                    "O primeiro passo é adicionar a base de dados!",
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
                onPressed: () {},
                buttonText: "Upload",
              ),
            ],
          ),
        ),
      ),
      backgroundColor: BaseColors.primary,
    );
  }
}

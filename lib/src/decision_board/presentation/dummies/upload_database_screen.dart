import 'package:decision_board_system/src/decision_board/domain/decision_board_usecase.dart';
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
      body: Center(
        child: Container(),
      ),
      backgroundColor: BaseColors.primary,
    );
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'game_instruction_widget.dart' show GameInstructionWidget;
import 'package:flutter/material.dart';

class GameInstructionModel extends FlutterFlowModel<GameInstructionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

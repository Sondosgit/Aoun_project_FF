import '/flutter_flow/flutter_flow_util.dart';
import 'game_result_widget.dart' show GameResultWidget;
import 'package:flutter/material.dart';

class GameResultModel extends FlutterFlowModel<GameResultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

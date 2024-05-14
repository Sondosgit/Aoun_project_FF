import '/flutter_flow/flutter_flow_util.dart';
import 'game_caregiver_widget.dart' show GameCaregiverWidget;
import 'package:flutter/material.dart';

class GameCaregiverModel extends FlutterFlowModel<GameCaregiverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

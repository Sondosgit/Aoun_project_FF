import '/flutter_flow/flutter_flow_util.dart';
import 'elderly_code_widget.dart' show ElderlyCodeWidget;
import 'package:flutter/material.dart';

class ElderlyCodeModel extends FlutterFlowModel<ElderlyCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

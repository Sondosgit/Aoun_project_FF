import '/flutter_flow/flutter_flow_util.dart';
import 'code_widget.dart' show CodeWidget;
import 'package:flutter/material.dart';

class CodeModel extends FlutterFlowModel<CodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var scan = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

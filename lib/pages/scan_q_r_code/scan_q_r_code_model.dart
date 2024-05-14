import '/flutter_flow/flutter_flow_util.dart';
import 'scan_q_r_code_widget.dart' show ScanQRCodeWidget;
import 'package:flutter/material.dart';

class ScanQRCodeModel extends FlutterFlowModel<ScanQRCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var qRCodeResult = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

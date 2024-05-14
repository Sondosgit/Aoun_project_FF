import '/flutter_flow/flutter_flow_util.dart';
import 'q_rcode_widget.dart' show QRcodeWidget;
import 'package:flutter/material.dart';

class QRcodeModel extends FlutterFlowModel<QRcodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

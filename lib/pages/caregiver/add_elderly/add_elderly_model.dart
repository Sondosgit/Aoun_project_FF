import '/flutter_flow/flutter_flow_util.dart';
import 'add_elderly_widget.dart' show AddElderlyWidget;
import 'package:flutter/material.dart';

class AddElderlyModel extends FlutterFlowModel<AddElderlyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

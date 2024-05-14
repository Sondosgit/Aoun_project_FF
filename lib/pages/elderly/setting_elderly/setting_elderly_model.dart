import '/flutter_flow/flutter_flow_util.dart';
import 'setting_elderly_widget.dart' show SettingElderlyWidget;
import 'package:flutter/material.dart';

class SettingElderlyModel extends FlutterFlowModel<SettingElderlyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'setting_caregiver_widget.dart' show SettingCaregiverWidget;
import 'package:flutter/material.dart';

class SettingCaregiverModel extends FlutterFlowModel<SettingCaregiverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

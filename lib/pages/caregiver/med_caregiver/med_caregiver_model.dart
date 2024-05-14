import '/flutter_flow/flutter_flow_util.dart';
import 'med_caregiver_widget.dart' show MedCaregiverWidget;
import 'package:flutter/material.dart';

class MedCaregiverModel extends FlutterFlowModel<MedCaregiverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

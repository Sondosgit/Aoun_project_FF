import '/flutter_flow/flutter_flow_util.dart';
import 'prayer_caregiver_widget.dart' show PrayerCaregiverWidget;
import 'package:flutter/material.dart';

class PrayerCaregiverModel extends FlutterFlowModel<PrayerCaregiverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

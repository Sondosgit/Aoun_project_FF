import '/flutter_flow/flutter_flow_util.dart';
import 'prayer_elderly_widget.dart' show PrayerElderlyWidget;
import 'package:flutter/material.dart';

class PrayerElderlyModel extends FlutterFlowModel<PrayerElderlyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

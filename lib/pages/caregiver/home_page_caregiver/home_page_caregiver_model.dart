import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_caregiver_widget.dart' show HomePageCaregiverWidget;
import 'package:flutter/material.dart';

class HomePageCaregiverModel extends FlutterFlowModel<HomePageCaregiverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

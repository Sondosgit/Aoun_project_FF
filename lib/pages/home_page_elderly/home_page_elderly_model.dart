import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_elderly_widget.dart' show HomePageElderlyWidget;
import 'package:flutter/material.dart';

class HomePageElderlyModel extends FlutterFlowModel<HomePageElderlyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'deletemedicine_widget.dart' show DeletemedicineWidget;
import 'package:flutter/material.dart';

class DeletemedicineModel extends FlutterFlowModel<DeletemedicineWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

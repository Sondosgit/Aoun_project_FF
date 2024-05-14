import '/flutter_flow/flutter_flow_util.dart';
import 'add_by_i_d_widget.dart' show AddByIDWidget;
import 'package:flutter/material.dart';

class AddByIDModel extends FlutterFlowModel<AddByIDWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for IDelderly widget.
  FocusNode? iDelderlyFocusNode;
  TextEditingController? iDelderlyTextController;
  String? Function(BuildContext, String?)? iDelderlyTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    iDelderlyFocusNode?.dispose();
    iDelderlyTextController?.dispose();
  }
}

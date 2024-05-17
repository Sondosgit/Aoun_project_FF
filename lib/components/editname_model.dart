import '/flutter_flow/flutter_flow_util.dart';
import 'editname_widget.dart' show EditnameWidget;
import 'package:flutter/material.dart';

class EditnameModel extends FlutterFlowModel<EditnameWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for newNmae widget.
  FocusNode? newNmaeFocusNode;
  TextEditingController? newNmaeTextController;
  String? Function(BuildContext, String?)? newNmaeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newNmaeFocusNode?.dispose();
    newNmaeTextController?.dispose();
  }
}

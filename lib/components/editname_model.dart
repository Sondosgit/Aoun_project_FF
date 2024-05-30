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
  String? _newNmaeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'الرجاء إدخال الاسم';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    newNmaeTextControllerValidator = _newNmaeTextControllerValidator;
  }

  @override
  void dispose() {
    newNmaeFocusNode?.dispose();
    newNmaeTextController?.dispose();
  }
}

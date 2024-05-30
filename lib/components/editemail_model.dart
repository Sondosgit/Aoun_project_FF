import '/flutter_flow/flutter_flow_util.dart';
import 'editemail_widget.dart' show EditemailWidget;
import 'package:flutter/material.dart';

class EditemailModel extends FlutterFlowModel<EditemailWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for newEmail widget.
  FocusNode? newEmailFocusNode;
  TextEditingController? newEmailTextController;
  String? Function(BuildContext, String?)? newEmailTextControllerValidator;
  String? _newEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'البريد الالكتروني مطلوب';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'تحقق من الصيغة';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    newEmailTextControllerValidator = _newEmailTextControllerValidator;
  }

  @override
  void dispose() {
    newEmailFocusNode?.dispose();
    newEmailTextController?.dispose();
  }
}

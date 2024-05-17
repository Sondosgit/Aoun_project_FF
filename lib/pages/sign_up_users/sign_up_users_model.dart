import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_users_widget.dart' show SignUpUsersWidget;
import 'package:flutter/material.dart';

class SignUpUsersModel extends FlutterFlowModel<SignUpUsersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nameeEE widget.
  FocusNode? nameeEEFocusNode;
  TextEditingController? nameeEETextController;
  String? Function(BuildContext, String?)? nameeEETextControllerValidator;
  String? _nameeEETextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'الخانة مطلوبة';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'الخانة مطلوبة';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'تحقق من الصيغة';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'الخانة مطلوبة';
    }

    return null;
  }

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    nameeEETextControllerValidator = _nameeEETextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameeEEFocusNode?.dispose();
    nameeEETextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_users_widget.dart' show SignUpUsersWidget;
import 'package:flutter/material.dart';

class SignUpUsersModel extends FlutterFlowModel<SignUpUsersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for nameeEE widget.
  FocusNode? nameeEEFocusNode;
  TextEditingController? nameeEETextController;
  String? Function(BuildContext, String?)? nameeEETextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    nameeEEFocusNode?.dispose();
    nameeEETextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}

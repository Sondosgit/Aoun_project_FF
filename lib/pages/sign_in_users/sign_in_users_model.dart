import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_users_widget.dart' show SignInUsersWidget;
import 'package:flutter/material.dart';

class SignInUsersModel extends FlutterFlowModel<SignInUsersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}

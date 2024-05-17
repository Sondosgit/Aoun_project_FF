import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_medicine_widget.dart' show AddMedicineWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMedicineModel extends FlutterFlowModel<AddMedicineWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for medName widget.
  FocusNode? medNameFocusNode;
  TextEditingController? medNameTextController;
  String? Function(BuildContext, String?)? medNameTextControllerValidator;
  String? _medNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'الخانة مطلوبة';
    }

    return null;
  }

  // State field(s) for dose widget.
  String? doseValue;
  FormFieldController<String>? doseValueController;
  DateTime? datePicked;
  // State field(s) for time widget.
  List<String>? timeValue;
  FormFieldController<List<String>>? timeValueController;
  // State field(s) for rep widget.
  List<String>? repValue;
  FormFieldController<List<String>>? repValueController;

  @override
  void initState(BuildContext context) {
    medNameTextControllerValidator = _medNameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    medNameFocusNode?.dispose();
    medNameTextController?.dispose();
  }
}

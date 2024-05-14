import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_medicine_widget.dart' show AddMedicineWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddMedicineModel extends FlutterFlowModel<AddMedicineWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // State field(s) for medName widget.
  FocusNode? medNameFocusNode;
  TextEditingController? medNameTextController;
  String? Function(BuildContext, String?)? medNameTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for dose widget.
  String? doseValue;
  FormFieldController<String>? doseValueController;
  // State field(s) for rep widget.
  List<String>? repValue;
  FormFieldController<List<String>>? repValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timeFocusNode?.dispose();
    timeTextController?.dispose();

    medNameFocusNode?.dispose();
    medNameTextController?.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_medicine_widget.dart' show EditMedicineWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditMedicineModel extends FlutterFlowModel<EditMedicineWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for medName_up widget.
  FocusNode? medNameUpFocusNode;
  TextEditingController? medNameUpTextController;
  String? Function(BuildContext, String?)? medNameUpTextControllerValidator;
  // State field(s) for dose_up widget.
  String? doseUpValue;
  FormFieldController<String>? doseUpValueController;
  // State field(s) for time_up widget.
  FocusNode? timeUpFocusNode;
  TextEditingController? timeUpTextController;
  String? Function(BuildContext, String?)? timeUpTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for rep_up widget.
  List<String>? repUpValue;
  FormFieldController<List<String>>? repUpValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    medNameUpFocusNode?.dispose();
    medNameUpTextController?.dispose();

    timeUpFocusNode?.dispose();
    timeUpTextController?.dispose();
  }
}

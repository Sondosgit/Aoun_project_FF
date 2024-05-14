import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checklist_eldelry_widget.dart' show ChecklistEldelryWidget;
import 'package:flutter/material.dart';

class ChecklistEldelryModel extends FlutterFlowModel<ChecklistEldelryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.

  Map<MediceneRecord, bool> checkboxValueMap6 = {};
  List<MediceneRecord> get checkboxCheckedItems6 => checkboxValueMap6.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

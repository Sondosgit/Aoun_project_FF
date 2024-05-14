import '/flutter_flow/flutter_flow_util.dart';
import 'medicines_page_widget.dart' show MedicinesPageWidget;
import 'package:flutter/material.dart';

class MedicinesPageModel extends FlutterFlowModel<MedicinesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

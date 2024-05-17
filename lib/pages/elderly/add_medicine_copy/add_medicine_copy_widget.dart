import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'add_medicine_copy_model.dart';
export 'add_medicine_copy_model.dart';

class AddMedicineCopyWidget extends StatefulWidget {
  const AddMedicineCopyWidget({super.key});

  @override
  State<AddMedicineCopyWidget> createState() => _AddMedicineCopyWidgetState();
}

class _AddMedicineCopyWidgetState extends State<AddMedicineCopyWidget> {
  late AddMedicineCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddMedicineCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}

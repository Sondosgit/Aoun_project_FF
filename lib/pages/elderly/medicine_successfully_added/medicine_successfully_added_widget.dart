import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'medicine_successfully_added_model.dart';
export 'medicine_successfully_added_model.dart';

class MedicineSuccessfullyAddedWidget extends StatefulWidget {
  const MedicineSuccessfullyAddedWidget({super.key});

  @override
  State<MedicineSuccessfullyAddedWidget> createState() =>
      _MedicineSuccessfullyAddedWidgetState();
}

class _MedicineSuccessfullyAddedWidgetState
    extends State<MedicineSuccessfullyAddedWidget> {
  late MedicineSuccessfullyAddedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicineSuccessfullyAddedModel());
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              const Align(
                alignment: AlignmentDirectional(-0.03, -0.48),
                child: Icon(
                  Icons.circle,
                  color: Color(0xFF4C4D7B),
                  size: 250.0,
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(-0.04, -0.45),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 200.0,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.06, 0.1),
                child: Text(
                  'تم الحفظ بنجاح',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF3B3F3F),
                        fontSize: 40.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.14, 0.93),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('MedicinesPage');
                  },
                  text: 'استمرار',
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 50.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF8478F0),
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFFEFF0F4),
                              fontSize: 27.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                            ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'alert_page_elderly_model.dart';
export 'alert_page_elderly_model.dart';

class AlertPageElderlyWidget extends StatefulWidget {
  const AlertPageElderlyWidget({
    super.key,
    required this.medRef,
  });

  final DocumentReference? medRef;

  @override
  State<AlertPageElderlyWidget> createState() => _AlertPageElderlyWidgetState();
}

class _AlertPageElderlyWidgetState extends State<AlertPageElderlyWidget> {
  late AlertPageElderlyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertPageElderlyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(0.02, -0.04),
          child: Container(
            width: 303.0,
            height: 152.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.32, 0.03),
          child: FFButtonWidget(
            onPressed: () async {
              await widget.medRef!.delete();

              context.pushNamed('deletemedicine');
            },
            text: 'نعم',
            options: FFButtonOptions(
              width: 80.0,
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: const Color(0xFF6869D6),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w300,
                  ),
              elevation: 3.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.27, 0.03),
          child: FFButtonWidget(
            onPressed: () async {
              context.safePop();
            },
            text: 'لا',
            options: FFButtonOptions(
              width: 80.0,
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: const Color(0xFF6869D6),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w300,
                  ),
              elevation: 3.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.02, -0.1),
          child: Text(
            'هل أنت متأكد من حذف الدواء ؟',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: const Color(0xFF3B3F3F),
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
      ],
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'allo_location_model.dart';
export 'allo_location_model.dart';

class AlloLocationWidget extends StatefulWidget {
  const AlloLocationWidget({super.key});

  @override
  State<AlloLocationWidget> createState() => _AlloLocationWidgetState();
}

class _AlloLocationWidgetState extends State<AlloLocationWidget> {
  late AlloLocationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlloLocationModel());
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
            onPressed: () {
              print('Button pressed ...');
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
              context.pushNamed('SettingElderly');
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
            'هل تريد السماح بالموقع؟',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: const Color(0xFF3B3F3F),
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.53, 0.02),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
            ),
            child: Checkbox(
              value: _model.checkboxValue ??= true,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue = newValue!);
              },
              side: BorderSide(
                width: 2,
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
        ),
      ],
    );
  }
}

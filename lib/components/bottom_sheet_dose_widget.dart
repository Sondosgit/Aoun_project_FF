import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bottom_sheet_dose_model.dart';
export 'bottom_sheet_dose_model.dart';

class BottomSheetDoseWidget extends StatefulWidget {
  const BottomSheetDoseWidget({super.key});

  @override
  State<BottomSheetDoseWidget> createState() => _BottomSheetDoseWidgetState();
}

class _BottomSheetDoseWidgetState extends State<BottomSheetDoseWidget> {
  late BottomSheetDoseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetDoseModel());
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
          alignment: const AlignmentDirectional(0.01, -0.93),
          child: Text(
            'التكرار',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.83, -0.49),
          child: Text(
            'كل أحد ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.83, 0.86),
          child: Text(
            'كل سبت',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.8, -0.27),
          child: Text(
            'كل أثنين',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.79, -0.05),
          child: Text(
            'كل ثلاثاء',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.81, 0.18),
          child: Text(
            'كل أربعاء',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.84, 0.44),
          child: Text(
            'كل خميس',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.83, 0.66),
          child: Text(
            'كل جمعة',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.7, 0.21),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: const Color(0xFFA6A6A6),
            ),
            child: Checkbox(
              value: _model.checkboxValue1 ??= false,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue1 = newValue!);
              },
              side: const BorderSide(
                width: 2,
                color: Color(0xFFA6A6A6),
              ),
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.7, -0.51),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: const Color(0xFFA6A6A6),
            ),
            child: Checkbox(
              value: _model.checkboxValue2 ??= false,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue2 = newValue!);
              },
              side: const BorderSide(
                width: 2,
                color: Color(0xFFA6A6A6),
              ),
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.68, 0.73),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: const Color(0xFFA6A6A6),
            ),
            child: Checkbox(
              value: _model.checkboxValue3 ??= false,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue3 = newValue!);
              },
              side: const BorderSide(
                width: 2,
                color: Color(0xFFA6A6A6),
              ),
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.68, 0.93),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: const Color(0xFFA6A6A6),
            ),
            child: Checkbox(
              value: _model.checkboxValue4 ??= false,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue4 = newValue!);
              },
              side: const BorderSide(
                width: 2,
                color: Color(0xFFA6A6A6),
              ),
              activeColor: FlutterFlowTheme.of(context).primaryText,
              checkColor: const Color(0xFF007B5F),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.67, 0.48),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: const Color(0xFFA6A6A6),
            ),
            child: Checkbox(
              value: _model.checkboxValue5 ??= false,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue5 = newValue!);
              },
              side: const BorderSide(
                width: 2,
                color: Color(0xFFA6A6A6),
              ),
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.69, -0.03),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: const Color(0xFFA6A6A6),
            ),
            child: Checkbox(
              value: _model.checkboxValue6 ??= false,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue6 = newValue!);
              },
              side: const BorderSide(
                width: 2,
                color: Color(0xFFA6A6A6),
              ),
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-0.7, -0.27),
          child: Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: const Color(0xFFA6A6A6),
            ),
            child: Checkbox(
              value: _model.checkboxValue7 ??= false,
              onChanged: (newValue) async {
                setState(() => _model.checkboxValue7 = newValue!);
              },
              side: const BorderSide(
                width: 2,
                color: Color(0xFFA6A6A6),
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

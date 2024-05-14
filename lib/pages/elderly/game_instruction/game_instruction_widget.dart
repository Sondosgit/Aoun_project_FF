import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'game_instruction_model.dart';
export 'game_instruction_model.dart';

class GameInstructionWidget extends StatefulWidget {
  const GameInstructionWidget({super.key});

  @override
  State<GameInstructionWidget> createState() => _GameInstructionWidgetState();
}

class _GameInstructionWidgetState extends State<GameInstructionWidget> {
  late GameInstructionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameInstructionModel());
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
              Align(
                alignment: const AlignmentDirectional(0.94, -1.01),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('HomePageElderly');
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF6869D6),
                    size: 40.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.06, -1.01),
                child: Text(
                  'التمارين',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF6869D6),
                        fontSize: 35.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.64, -0.5),
                child: Text(
                  '        ترتيب الأرقام ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF3B3F3F),
                        fontSize: 35.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.03),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 203.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                        color: const Color(0xFFBA7FF4),
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.78, -0.17),
                child: Text(
                  '        \n :شرح اللعبة ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF3B3F3F),
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.04, -0.75),
                child: Text(
                  '        \nلعبة',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF3B3F3F),
                        fontSize: 35.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.07),
                child: Text(
                  '        \nلعبة ذهنية تعتمد على التركيز \nوالمهارة في إعادة ترتيب المربعات بحسب الأرقام',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF3B3F3F),
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.14, 0.93),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Game');
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

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'elderly_code_model.dart';
export 'elderly_code_model.dart';

class ElderlyCodeWidget extends StatefulWidget {
  const ElderlyCodeWidget({super.key});

  @override
  State<ElderlyCodeWidget> createState() => _ElderlyCodeWidgetState();
}

class _ElderlyCodeWidgetState extends State<ElderlyCodeWidget> {
  late ElderlyCodeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElderlyCodeModel());
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
                alignment: AlignmentDirectional(0.86, 1.04),
                child: Icon(
                  Icons.settings,
                  color: Color(0xFF4C4D7B),
                  size: 50.0,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.07),
                child: Container(
                  width: 532.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6869D6),
                    borderRadius: BorderRadius.circular(40.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color(0xFF6869D6),
                      width: 3.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.06, 0.99),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('HomePageElderly');
                  },
                  child: const Icon(
                    Icons.home_sharp,
                    color: Color(0xFF4C4D7B),
                    size: 60.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.81, 0.99),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('elderlyCode');
                  },
                  child: const Icon(
                    Icons.people_alt_rounded,
                    color: Colors.white,
                    size: 60.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.89, -1.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('SettingElderly');
                  },
                  child: const Icon(
                    Icons.settings,
                    color: Color(0xFF4C4D7B),
                    size: 50.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.8, 0.99),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('ChecklistElderly');
                  },
                  child: const Icon(
                    Icons.check_circle_rounded,
                    color: Color(0xFF4C4D7B),
                    size: 60.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.02, -0.18),
                child: AuthUserStreamWidget(
                  builder: (context) => Text(
                    valueOrDefault(currentUserDocument?.userID, ''),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 27.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, -0.41),
                child: Text(
                  ':الرمز الخاص بك',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 23.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(1.0, -1.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Text(
                          'مرحبا  $currentUserDisplayName',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF3B3F3F),
                                    fontSize: 35.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 10.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

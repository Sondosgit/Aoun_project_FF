import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/alert_log_out_elderly/alert_log_out_elderly_widget.dart';
import 'package:flutter/material.dart';
import 'setting_elderly_model.dart';
export 'setting_elderly_model.dart';

class SettingElderlyWidget extends StatefulWidget {
  const SettingElderlyWidget({super.key});

  @override
  State<SettingElderlyWidget> createState() => _SettingElderlyWidgetState();
}

class _SettingElderlyWidgetState extends State<SettingElderlyWidget> {
  late SettingElderlyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingElderlyModel());
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
                alignment: const AlignmentDirectional(0.93, -0.95),
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
                alignment: const AlignmentDirectional(0.09, -0.61),
                child: Text(
                  '..تطبيق عون\nيوفر لك وسائل مطورة نحو حياة أفضل',
                  textAlign: TextAlign.end,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFFA6A6A6),
                        fontSize: 23.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.42, 0.93),
                child: Builder(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: const AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: const AlertLogOutElderlyWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Text(
                      'تسجيل الخروج',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF3B3F3F),
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.9, 0.96),
                child: Builder(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: const AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: GestureDetector(
                              onTap: () => _model.unfocusNode.canRequestFocus
                                  ? FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode)
                                  : FocusScope.of(context).unfocus(),
                              child: const AlertLogOutElderlyWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: const Icon(
                      Icons.logout_rounded,
                      color: Color(0xFF4C4D7B),
                      size: 50.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.39, 0.15),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'EditProfileElderly',
                      queryParameters: {
                        'userRef': serializeParam(
                          currentUserReference,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Text(
                    'تعديل الملف الشخصي',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF3B3F3F),
                          fontSize: 23.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, -0.97),
                child: Text(
                  'الإعدادات',
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
                alignment: const AlignmentDirectional(0.98, 0.15),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'EditProfileElderly',
                      queryParameters: {
                        'userRef': serializeParam(
                          currentUserReference,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: const Icon(
                    Icons.person_sharp,
                    color: Color(0xFF4C4D7B),
                    size: 50.0,
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

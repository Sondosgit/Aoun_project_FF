import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'game_caregiver_model.dart';
export 'game_caregiver_model.dart';

class GameCaregiverWidget extends StatefulWidget {
  const GameCaregiverWidget({super.key});

  @override
  State<GameCaregiverWidget> createState() => _GameCaregiverWidgetState();
}

class _GameCaregiverWidgetState extends State<GameCaregiverWidget> {
  late GameCaregiverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameCaregiverModel());
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
          child: AuthUserStreamWidget(
            builder: (context) => StreamBuilder<List<ExerciseRecord>>(
              stream: queryExerciseRecord(
                queryBuilder: (exerciseRecord) => exerciseRecord.where(
                  'createdByID',
                  isEqualTo:
                      valueOrDefault(currentUserDocument?.secondUserID, ''),
                ),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<ExerciseRecord> stackExerciseRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final stackExerciseRecord = stackExerciseRecordList.isNotEmpty
                    ? stackExerciseRecordList.first
                    : null;
                return Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.04, -0.96),
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
                      alignment: const AlignmentDirectional(0.94, -0.95),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('HomePageCaregiver');
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF6869D6),
                          size: 40.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.75, -0.68),
                      child: Text(
                        'الأداء اليومي',
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
                      alignment: const AlignmentDirectional(0.09, -0.23),
                      child: CircularPercentIndicator(
                        percent: () {
                          if (stackExerciseRecord!.moves <= 120) {
                            return 1.0;
                          } else if (stackExerciseRecord.moves <= 170) {
                            return 0.5;
                          } else {
                            return 0.25;
                          }
                        }(),
                        radius: 145.0,
                        lineWidth: 12.0,
                        animation: true,
                        animateFromLastPercent: true,
                        progressColor: FlutterFlowTheme.of(context).primary,
                        backgroundColor: FlutterFlowTheme.of(context).accent4,
                        center: Text(
                          () {
                            if (stackExerciseRecord!.moves <= 70) {
                              return 100.0;
                            } else if (stackExerciseRecord.moves <= 120) {
                              return 50.0;
                            } else {
                              return 30.0;
                            }
                          }()
                              .toString(),
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

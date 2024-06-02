import '/components/initial_grid_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'game_model.dart';
export 'game_model.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({super.key});

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  late GameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(2.5, 0.0),
                        child: Text(
                          'التمارين',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF6869D6),
                                    fontSize: 35.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(0.94, -0.98),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('GameInstruction');

                            _model.timerController.onResetTimer();

                            FFAppState().isStarted = false;
                            setState(() {});
                            FFAppState().moves = 0;
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6869D6),
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                    child: Text(
                      'الحركات',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 23.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  if (FFAppState().isStarted == true)
                    Text(
                      FFAppState().moves.toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  if (FFAppState().isStarted ? true : false)
                    FlutterFlowTimer(
                      initialTime: _model.timerInitialTimeMs,
                      getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                        value,
                        hours: false,
                        milliSecond: false,
                      ),
                      controller: _model.timerController,
                      updateStateInterval: const Duration(milliseconds: 1000),
                      onChanged: (value, displayTime, shouldUpdate) {
                        _model.timerMilliseconds = value;
                        _model.timerValue = displayTime;
                        if (shouldUpdate) setState(() {});
                      },
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                    ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                height: MediaQuery.sizeOf(context).height * 0.5,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final currentPuzzleList = FFAppState().puzzleNum.toList();
                      if (currentPuzzleList.isEmpty) {
                        return SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: const InitialGridViewWidget(),
                        );
                      }
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 1.0,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: currentPuzzleList.length,
                        itemBuilder: (context, currentPuzzleListIndex) {
                          final currentPuzzleListItem =
                              currentPuzzleList[currentPuzzleListIndex];
                          return Visibility(
                            visible: currentPuzzleListItem != 0,
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.listMovesMap =
                                    await actions.clickOpreation(
                                  FFAppState().puzzleNum.toList(),
                                  functions.getIndex(
                                      FFAppState().puzzleNum.toList(),
                                      currentPuzzleListItem),
                                  FFAppState().moves,
                                );
                                FFAppState().puzzleNum = getJsonField(
                                  _model.listMovesMap,
                                  r'''$.list''',
                                  true,
                                )!
                                    .toList()
                                    .cast<int>();
                                setState(() {});
                                FFAppState().moves = getJsonField(
                                  _model.listMovesMap,
                                  r'''$.moves''',
                                );
                                setState(() {});
                                _model.isSolved = actions.isSolved(
                                  FFAppState().puzzleNum.toList(),
                                );
                                FFAppState().isStarted =
                                    _model.isSolved == true ? false : true;
                                setState(() {});
                                FFAppState().TimeResult = _model.timerValue;
                                setState(() {});
                                if (_model.isSolved == true) {
                                  _model.timerController.onStopTimer();
                                  _model.timerController.timer.setPresetTime(
                                    mSec: _model.timerMilliseconds,
                                    add: false,
                                  );
                                  _model.timerController.onResetTimer();

                                  context.pushNamed('GameResult');
                                }

                                setState(() {});
                              },
                              text: currentPuzzleListItem.toString(),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF8478F0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              if (FFAppState().isStarted == false)
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.shuffledpuzzleList =
                            await actions.shufflepuzzle();
                        FFAppState().puzzleNum =
                            _model.shuffledpuzzleList!.toList().cast<int>();
                        setState(() {});
                        FFAppState().isStarted = true;
                        setState(() {});
                        _model.timerController.onStartTimer();
                        FFAppState().moves = 0;
                        setState(() {});

                        setState(() {});
                      },
                      text: 'ابدأ',
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 50.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
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
                ),
            ],
          ),
        ),
      ),
    );
  }
}

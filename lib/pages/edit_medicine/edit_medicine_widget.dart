import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit_medicine_model.dart';
export 'edit_medicine_model.dart';

class EditMedicineWidget extends StatefulWidget {
  const EditMedicineWidget({
    super.key,
    required this.medEditRef,
  });

  final DocumentReference? medEditRef;

  @override
  State<EditMedicineWidget> createState() => _EditMedicineWidgetState();
}

class _EditMedicineWidgetState extends State<EditMedicineWidget> {
  late EditMedicineModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditMedicineModel());

    _model.medNameUpFocusNode ??= FocusNode();

    _model.timeUpTextController ??= TextEditingController();
    _model.timeUpFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MediceneRecord>(
      stream: MediceneRecord.getDocument(widget.medEditRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final editMedicineMediceneRecord = snapshot.data!;
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
                    alignment: const AlignmentDirectional(-0.02, -1.03),
                    child: Text(
                      'تعديل الدواء ',
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
                    alignment: const AlignmentDirectional(0.95, -0.73),
                    child: Text(
                      'اسم الدواء ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF3B3F3F),
                            fontSize: 30.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.88, -0.35),
                    child: Text(
                      'الجرعة',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF3B3F3F),
                            fontSize: 30.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.88, 0.0),
                    child: Text(
                      'الوقت',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF3B3F3F),
                            fontSize: 30.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.87, 0.39),
                    child: Text(
                      'التكرار',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: const Color(0xFF3B3F3F),
                            fontSize: 30.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.94, -1.01),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF6869D6),
                        size: 40.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.14, 0.93),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await widget.medEditRef!.update({
                          ...createMediceneRecordData(
                            medName: _model.medNameUpTextController.text,
                            medDose: _model.doseUpValue,
                            medTime: _model.datePicked,
                          ),
                          ...mapToFirestore(
                            {
                              'medRep': _model.repUpValue,
                            },
                          ),
                        });

                        context.goNamed('EditSuccessfullyElderly');
                      },
                      text: 'تعديل',
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
                  Align(
                    alignment: const AlignmentDirectional(0.0, -0.58),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.medNameUpTextController ??=
                            TextEditingController(
                          text: editMedicineMediceneRecord.medName,
                        ),
                        focusNode: _model.medNameUpFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFA6A6A6),
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                          alignLabelWithHint: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFA6A6A6),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.end,
                        validator: _model.medNameUpTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.1, -0.22),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.doseUpValueController ??=
                          FormFieldController<String>(
                        _model.doseUpValue ??=
                            editMedicineMediceneRecord.medDose,
                      ),
                      options: const [
                        '💊   جرعة                                                                  ',
                        '💊    💊   جرعتان           ',
                        ' 💊    💊    💊   ٣  جرعات  '
                      ],
                      onChanged: (val) =>
                          setState(() => _model.doseUpValue = val),
                      width: 375.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 15.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: const Color(0xFFA6A6A6),
                      borderWidth: 2.0,
                      borderRadius: 40.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional(-0.96, -0.22),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFA6A6A6),
                        size: 44.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.14),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: TextFormField(
                        controller: _model.timeUpTextController,
                        focusNode: _model.timeUpFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFA6A6A6),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.end,
                        validator: _model.timeUpTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.97, 0.15),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet<bool>(
                              context: context,
                              builder: (context) {
                                final datePickedCupertinoTheme =
                                    CupertinoTheme.of(context);
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  width: MediaQuery.of(context).size.width,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  child: CupertinoTheme(
                                    data: datePickedCupertinoTheme.copyWith(
                                      textTheme: datePickedCupertinoTheme
                                          .textTheme
                                          .copyWith(
                                        dateTimePickerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 27.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                      ),
                                    ),
                                    child: CupertinoDatePicker(
                                      mode: CupertinoDatePickerMode.time,
                                      minimumDate: DateTime(1900),
                                      initialDateTime: getCurrentTimestamp,
                                      maximumDate: DateTime(2050),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      use24hFormat: false,
                                      onDateTimeChanged: (newDateTime) =>
                                          safeSetState(() {
                                        _model.datePicked = newDateTime;
                                      }),
                                    ),
                                  ),
                                );
                              });
                          setState(() {
                            _model.timeUpTextController?.text =
                                _model.timeUpTextController.text;
                          });
                        },
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFFA6A6A6),
                          size: 44.0,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.3, 0.55),
                    child: FlutterFlowDropDown<String>(
                      multiSelectController: _model.repUpValueController ??=
                          FormFieldController<List<String>>(
                              _model.repUpValue ??= List<String>.from(
                        editMedicineMediceneRecord.medRep ?? [],
                      )),
                      options: const [
                        'كل أحد',
                        'كل أثنين',
                        'كل ثلاثاء',
                        'كل أربعاء',
                        'كل خميس',
                        'كل جمعة',
                        'كل سبت'
                      ],
                      width: 375.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                fontSize: 17.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                              ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 15.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: const Color(0xFFA6A6A6),
                      borderWidth: 2.0,
                      borderRadius: 40.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: true,
                      onMultiSelectChanged: (val) =>
                          setState(() => _model.repUpValue = val),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional(-0.98, 0.55),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFA6A6A6),
                        size: 44.0,
                      ),
                    ),
                  ),
                  if (_model.datePicked == null)
                    Align(
                      alignment: const AlignmentDirectional(0.84, 0.14),
                      child: Text(
                        dateTimeFormat(
                          'jm',
                          _model.datePicked,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

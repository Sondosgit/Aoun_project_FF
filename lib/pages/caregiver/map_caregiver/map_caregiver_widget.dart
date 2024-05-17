import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'map_caregiver_model.dart';
export 'map_caregiver_model.dart';

class MapCaregiverWidget extends StatefulWidget {
  const MapCaregiverWidget({super.key});

  @override
  State<MapCaregiverWidget> createState() => _MapCaregiverWidgetState();
}

class _MapCaregiverWidgetState extends State<MapCaregiverWidget> {
  late MapCaregiverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapCaregiverModel());
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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: AuthUserStreamWidget(
            builder: (context) => StreamBuilder<List<ElderlyLocationRecord>>(
              stream: queryElderlyLocationRecord(
                queryBuilder: (elderlyLocationRecord) =>
                    elderlyLocationRecord.where(
                  'CreatedByID',
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
                List<ElderlyLocationRecord> columnElderlyLocationRecordList =
                    snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnElderlyLocationRecord =
                    columnElderlyLocationRecordList.isNotEmpty
                        ? columnElderlyLocationRecordList.first
                        : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 33.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  140.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'الموقع',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF6869D6),
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            const Flexible(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Color(0xFF6869D6),
                                size: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.11),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 533.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(0.0),
                            border: Border.all(
                              color: const Color(0xFF67C0E6),
                              width: 3.0,
                            ),
                          ),
                          child: Builder(builder: (context) {
                            final googleMapMarker =
                                columnElderlyLocationRecord?.elderlyCurrentLoc;
                            return FlutterFlowGoogleMap(
                              controller: _model.googleMapsController,
                              onCameraIdle: (latLng) => setState(
                                  () => _model.googleMapsCenter = latLng),
                              initialLocation: _model.googleMapsCenter ??=
                                  columnElderlyLocationRecord!
                                      .elderlyCurrentLoc!,
                              markers: [
                                if (googleMapMarker != null)
                                  FlutterFlowMarker(
                                    googleMapMarker.serialize(),
                                    googleMapMarker,
                                  ),
                              ],
                              markerColor: GoogleMarkerColor.blue,
                              mapType: MapType.normal,
                              style: GoogleMapStyle.standard,
                              initialZoom: 11.0,
                              allowInteraction: true,
                              allowZoom: true,
                              showZoomControls: true,
                              showLocation: true,
                              showCompass: false,
                              showMapToolbar: false,
                              showTraffic: false,
                              centerMapOnMarkerTap: true,
                            );
                          }),
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

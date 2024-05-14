import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ElderlyLocationRecord extends FirestoreRecord {
  ElderlyLocationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "CreatedByID" field.
  String? _createdByID;
  String get createdByID => _createdByID ?? '';
  bool hasCreatedByID() => _createdByID != null;

  // "ElderlyCurrentLoc" field.
  LatLng? _elderlyCurrentLoc;
  LatLng? get elderlyCurrentLoc => _elderlyCurrentLoc;
  bool hasElderlyCurrentLoc() => _elderlyCurrentLoc != null;

  // "elderlyName" field.
  String? _elderlyName;
  String get elderlyName => _elderlyName ?? '';
  bool hasElderlyName() => _elderlyName != null;

  void _initializeFields() {
    _createdByID = snapshotData['CreatedByID'] as String?;
    _elderlyCurrentLoc = snapshotData['ElderlyCurrentLoc'] as LatLng?;
    _elderlyName = snapshotData['elderlyName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ElderlyLocation');

  static Stream<ElderlyLocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ElderlyLocationRecord.fromSnapshot(s));

  static Future<ElderlyLocationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ElderlyLocationRecord.fromSnapshot(s));

  static ElderlyLocationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ElderlyLocationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ElderlyLocationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ElderlyLocationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ElderlyLocationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ElderlyLocationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createElderlyLocationRecordData({
  String? createdByID,
  LatLng? elderlyCurrentLoc,
  String? elderlyName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CreatedByID': createdByID,
      'ElderlyCurrentLoc': elderlyCurrentLoc,
      'elderlyName': elderlyName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ElderlyLocationRecordDocumentEquality
    implements Equality<ElderlyLocationRecord> {
  const ElderlyLocationRecordDocumentEquality();

  @override
  bool equals(ElderlyLocationRecord? e1, ElderlyLocationRecord? e2) {
    return e1?.createdByID == e2?.createdByID &&
        e1?.elderlyCurrentLoc == e2?.elderlyCurrentLoc &&
        e1?.elderlyName == e2?.elderlyName;
  }

  @override
  int hash(ElderlyLocationRecord? e) => const ListEquality()
      .hash([e?.createdByID, e?.elderlyCurrentLoc, e?.elderlyName]);

  @override
  bool isValidKey(Object? o) => o is ElderlyLocationRecord;
}

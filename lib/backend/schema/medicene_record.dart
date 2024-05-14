import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MediceneRecord extends FirestoreRecord {
  MediceneRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "medName" field.
  String? _medName;
  String get medName => _medName ?? '';
  bool hasMedName() => _medName != null;

  // "medDose" field.
  String? _medDose;
  String get medDose => _medDose ?? '';
  bool hasMedDose() => _medDose != null;

  // "medRep" field.
  List<String>? _medRep;
  List<String> get medRep => _medRep ?? const [];
  bool hasMedRep() => _medRep != null;

  // "taken" field.
  bool? _taken;
  bool get taken => _taken ?? false;
  bool hasTaken() => _taken != null;

  // "createdByID" field.
  String? _createdByID;
  String get createdByID => _createdByID ?? '';
  bool hasCreatedByID() => _createdByID != null;

  // "medTime" field.
  DateTime? _medTime;
  DateTime? get medTime => _medTime;
  bool hasMedTime() => _medTime != null;

  void _initializeFields() {
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _medName = snapshotData['medName'] as String?;
    _medDose = snapshotData['medDose'] as String?;
    _medRep = getDataList(snapshotData['medRep']);
    _taken = snapshotData['taken'] as bool?;
    _createdByID = snapshotData['createdByID'] as String?;
    _medTime = snapshotData['medTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicene');

  static Stream<MediceneRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MediceneRecord.fromSnapshot(s));

  static Future<MediceneRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MediceneRecord.fromSnapshot(s));

  static MediceneRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MediceneRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MediceneRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MediceneRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MediceneRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MediceneRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMediceneRecordData({
  DocumentReference? createdBy,
  String? medName,
  String? medDose,
  bool? taken,
  String? createdByID,
  DateTime? medTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_by': createdBy,
      'medName': medName,
      'medDose': medDose,
      'taken': taken,
      'createdByID': createdByID,
      'medTime': medTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class MediceneRecordDocumentEquality implements Equality<MediceneRecord> {
  const MediceneRecordDocumentEquality();

  @override
  bool equals(MediceneRecord? e1, MediceneRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdBy == e2?.createdBy &&
        e1?.medName == e2?.medName &&
        e1?.medDose == e2?.medDose &&
        listEquality.equals(e1?.medRep, e2?.medRep) &&
        e1?.taken == e2?.taken &&
        e1?.createdByID == e2?.createdByID &&
        e1?.medTime == e2?.medTime;
  }

  @override
  int hash(MediceneRecord? e) => const ListEquality().hash([
        e?.createdBy,
        e?.medName,
        e?.medDose,
        e?.medRep,
        e?.taken,
        e?.createdByID,
        e?.medTime
      ]);

  @override
  bool isValidKey(Object? o) => o is MediceneRecord;
}

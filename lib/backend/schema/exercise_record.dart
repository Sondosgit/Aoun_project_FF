import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExerciseRecord extends FirestoreRecord {
  ExerciseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "moves" field.
  int? _moves;
  int get moves => _moves ?? 0;
  bool hasMoves() => _moves != null;

  // "createdByID" field.
  String? _createdByID;
  String get createdByID => _createdByID ?? '';
  bool hasCreatedByID() => _createdByID != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _time = snapshotData['time'] as String?;
    _moves = castToType<int>(snapshotData['moves']);
    _createdByID = snapshotData['createdByID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exercise');

  static Stream<ExerciseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExerciseRecord.fromSnapshot(s));

  static Future<ExerciseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExerciseRecord.fromSnapshot(s));

  static ExerciseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExerciseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExerciseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExerciseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExerciseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExerciseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExerciseRecordData({
  DocumentReference? user,
  String? time,
  int? moves,
  String? createdByID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'time': time,
      'moves': moves,
      'createdByID': createdByID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExerciseRecordDocumentEquality implements Equality<ExerciseRecord> {
  const ExerciseRecordDocumentEquality();

  @override
  bool equals(ExerciseRecord? e1, ExerciseRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.time == e2?.time &&
        e1?.moves == e2?.moves &&
        e1?.createdByID == e2?.createdByID;
  }

  @override
  int hash(ExerciseRecord? e) =>
      const ListEquality().hash([e?.user, e?.time, e?.moves, e?.createdByID]);

  @override
  bool isValidKey(Object? o) => o is ExerciseRecord;
}

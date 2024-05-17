import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ElderlyRecord extends FirestoreRecord {
  ElderlyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "locationAllawance" field.
  bool? _locationAllawance;
  bool get locationAllawance => _locationAllawance ?? false;
  bool hasLocationAllawance() => _locationAllawance != null;

  // "SuperUser" field.
  DocumentReference? _superUser;
  DocumentReference? get superUser => _superUser;
  bool hasSuperUser() => _superUser != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _locationAllawance = snapshotData['locationAllawance'] as bool?;
    _superUser = snapshotData['SuperUser'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Elderly');

  static Stream<ElderlyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ElderlyRecord.fromSnapshot(s));

  static Future<ElderlyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ElderlyRecord.fromSnapshot(s));

  static ElderlyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ElderlyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ElderlyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ElderlyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ElderlyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ElderlyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createElderlyRecordData({
  String? name,
  String? email,
  String? password,
  bool? locationAllawance,
  DocumentReference? superUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'locationAllawance': locationAllawance,
      'SuperUser': superUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class ElderlyRecordDocumentEquality implements Equality<ElderlyRecord> {
  const ElderlyRecordDocumentEquality();

  @override
  bool equals(ElderlyRecord? e1, ElderlyRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.locationAllawance == e2?.locationAllawance &&
        e1?.superUser == e2?.superUser;
  }

  @override
  int hash(ElderlyRecord? e) => const ListEquality().hash(
      [e?.name, e?.email, e?.password, e?.locationAllawance, e?.superUser]);

  @override
  bool isValidKey(Object? o) => o is ElderlyRecord;
}

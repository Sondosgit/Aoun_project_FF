import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CaregiversRecord extends FirestoreRecord {
  CaregiversRecord._(
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

  // "cameraAllawance" field.
  bool? _cameraAllawance;
  bool get cameraAllawance => _cameraAllawance ?? false;
  bool hasCameraAllawance() => _cameraAllawance != null;

  // "C_elderly" field.
  DocumentReference? _cElderly;
  DocumentReference? get cElderly => _cElderly;
  bool hasCElderly() => _cElderly != null;

  // "superUser" field.
  DocumentReference? _superUser;
  DocumentReference? get superUser => _superUser;
  bool hasSuperUser() => _superUser != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _cameraAllawance = snapshotData['cameraAllawance'] as bool?;
    _cElderly = snapshotData['C_elderly'] as DocumentReference?;
    _superUser = snapshotData['superUser'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Caregivers');

  static Stream<CaregiversRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CaregiversRecord.fromSnapshot(s));

  static Future<CaregiversRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CaregiversRecord.fromSnapshot(s));

  static CaregiversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CaregiversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CaregiversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CaregiversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CaregiversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CaregiversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCaregiversRecordData({
  String? name,
  String? email,
  String? password,
  bool? cameraAllawance,
  DocumentReference? cElderly,
  DocumentReference? superUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'cameraAllawance': cameraAllawance,
      'C_elderly': cElderly,
      'superUser': superUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class CaregiversRecordDocumentEquality implements Equality<CaregiversRecord> {
  const CaregiversRecordDocumentEquality();

  @override
  bool equals(CaregiversRecord? e1, CaregiversRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.cameraAllawance == e2?.cameraAllawance &&
        e1?.cElderly == e2?.cElderly &&
        e1?.superUser == e2?.superUser;
  }

  @override
  int hash(CaregiversRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.password,
        e?.cameraAllawance,
        e?.cElderly,
        e?.superUser
      ]);

  @override
  bool isValidKey(Object? o) => o is CaregiversRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PrayerRecord extends FirestoreRecord {
  PrayerRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "users_p" field.
  DocumentReference? _usersP;
  DocumentReference? get usersP => _usersP;
  bool hasUsersP() => _usersP != null;

  // "fajr" field.
  bool? _fajr;
  bool get fajr => _fajr ?? false;
  bool hasFajr() => _fajr != null;

  // "dhuhr" field.
  bool? _dhuhr;
  bool get dhuhr => _dhuhr ?? false;
  bool hasDhuhr() => _dhuhr != null;

  // "asr" field.
  bool? _asr;
  bool get asr => _asr ?? false;
  bool hasAsr() => _asr != null;

  // "maghrib" field.
  bool? _maghrib;
  bool get maghrib => _maghrib ?? false;
  bool hasMaghrib() => _maghrib != null;

  // "isha" field.
  bool? _isha;
  bool get isha => _isha ?? false;
  bool hasIsha() => _isha != null;

  // "createdByID" field.
  String? _createdByID;
  String get createdByID => _createdByID ?? '';
  bool hasCreatedByID() => _createdByID != null;

  void _initializeFields() {
    _usersP = snapshotData['users_p'] as DocumentReference?;
    _fajr = snapshotData['fajr'] as bool?;
    _dhuhr = snapshotData['dhuhr'] as bool?;
    _asr = snapshotData['asr'] as bool?;
    _maghrib = snapshotData['maghrib'] as bool?;
    _isha = snapshotData['isha'] as bool?;
    _createdByID = snapshotData['createdByID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prayer');

  static Stream<PrayerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrayerRecord.fromSnapshot(s));

  static Future<PrayerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PrayerRecord.fromSnapshot(s));

  static PrayerRecord fromSnapshot(DocumentSnapshot snapshot) => PrayerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrayerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrayerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrayerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrayerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrayerRecordData({
  DocumentReference? usersP,
  bool? fajr,
  bool? dhuhr,
  bool? asr,
  bool? maghrib,
  bool? isha,
  String? createdByID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users_p': usersP,
      'fajr': fajr,
      'dhuhr': dhuhr,
      'asr': asr,
      'maghrib': maghrib,
      'isha': isha,
      'createdByID': createdByID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrayerRecordDocumentEquality implements Equality<PrayerRecord> {
  const PrayerRecordDocumentEquality();

  @override
  bool equals(PrayerRecord? e1, PrayerRecord? e2) {
    return e1?.usersP == e2?.usersP &&
        e1?.fajr == e2?.fajr &&
        e1?.dhuhr == e2?.dhuhr &&
        e1?.asr == e2?.asr &&
        e1?.maghrib == e2?.maghrib &&
        e1?.isha == e2?.isha &&
        e1?.createdByID == e2?.createdByID;
  }

  @override
  int hash(PrayerRecord? e) => const ListEquality().hash([
        e?.usersP,
        e?.fajr,
        e?.dhuhr,
        e?.asr,
        e?.maghrib,
        e?.isha,
        e?.createdByID
      ]);

  @override
  bool isValidKey(Object? o) => o is PrayerRecord;
}

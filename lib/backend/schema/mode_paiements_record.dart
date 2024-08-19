import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModePaiementsRecord extends FirestoreRecord {
  ModePaiementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _type = snapshotData['type'] as String?;
    _phone = snapshotData['phone'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mode_paiements');

  static Stream<ModePaiementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModePaiementsRecord.fromSnapshot(s));

  static Future<ModePaiementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ModePaiementsRecord.fromSnapshot(s));

  static ModePaiementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModePaiementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModePaiementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModePaiementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModePaiementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModePaiementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createModePaiementsRecordData({
  DocumentReference? user,
  String? type,
  String? phone,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'type': type,
      'phone': phone,
      'created_at': createdAt,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModePaiementsRecordDocumentEquality
    implements Equality<ModePaiementsRecord> {
  const ModePaiementsRecordDocumentEquality();

  @override
  bool equals(ModePaiementsRecord? e1, ModePaiementsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.type == e2?.type &&
        e1?.phone == e2?.phone &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(ModePaiementsRecord? e) => const ListEquality()
      .hash([e?.user, e?.type, e?.phone, e?.createdAt, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is ModePaiementsRecord;
}

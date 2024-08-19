import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarifSystemRecord extends FirestoreRecord {
  TarifSystemRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
    _value = castToType<double>(snapshotData['value']);
    _active = snapshotData['active'] as bool?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tarif_system');

  static Stream<TarifSystemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarifSystemRecord.fromSnapshot(s));

  static Future<TarifSystemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarifSystemRecord.fromSnapshot(s));

  static TarifSystemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarifSystemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarifSystemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarifSystemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarifSystemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarifSystemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarifSystemRecordData({
  String? name,
  String? type,
  double? value,
  bool? active,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
      'active': active,
      'created_at': createdAt,
      'updated_at': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarifSystemRecordDocumentEquality implements Equality<TarifSystemRecord> {
  const TarifSystemRecordDocumentEquality();

  @override
  bool equals(TarifSystemRecord? e1, TarifSystemRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.value == e2?.value &&
        e1?.active == e2?.active &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(TarifSystemRecord? e) => const ListEquality().hash(
      [e?.name, e?.type, e?.value, e?.active, e?.createdAt, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is TarifSystemRecord;
}

import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoresRecord extends FirestoreRecord {
  StoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "storeName" field.
  String? _storeName;
  String get storeName => _storeName ?? '';
  bool hasStoreName() => _storeName != null;

  // "storeAddress" field.
  String? _storeAddress;
  String get storeAddress => _storeAddress ?? '';
  bool hasStoreAddress() => _storeAddress != null;

  // "storePhoneNumber" field.
  String? _storePhoneNumber;
  String get storePhoneNumber => _storePhoneNumber ?? '';
  bool hasStorePhoneNumber() => _storePhoneNumber != null;

  // "storeEmail" field.
  String? _storeEmail;
  String get storeEmail => _storeEmail ?? '';
  bool hasStoreEmail() => _storeEmail != null;

  // "storeLogo" field.
  String? _storeLogo;
  String get storeLogo => _storeLogo ?? '';
  bool hasStoreLogo() => _storeLogo != null;

  // "storeBio" field.
  String? _storeBio;
  String get storeBio => _storeBio ?? '';
  bool hasStoreBio() => _storeBio != null;

  // "storeUser" field.
  DocumentReference? _storeUser;
  DocumentReference? get storeUser => _storeUser;
  bool hasStoreUser() => _storeUser != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "storeCoverImg" field.
  String? _storeCoverImg;
  String get storeCoverImg => _storeCoverImg ?? '';
  bool hasStoreCoverImg() => _storeCoverImg != null;

  void _initializeFields() {
    _storeName = snapshotData['storeName'] as String?;
    _storeAddress = snapshotData['storeAddress'] as String?;
    _storePhoneNumber = snapshotData['storePhoneNumber'] as String?;
    _storeEmail = snapshotData['storeEmail'] as String?;
    _storeLogo = snapshotData['storeLogo'] as String?;
    _storeBio = snapshotData['storeBio'] as String?;
    _storeUser = snapshotData['storeUser'] as DocumentReference?;
    _active = snapshotData['active'] as bool?;
    _storeCoverImg = snapshotData['storeCoverImg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stores');

  static Stream<StoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoresRecord.fromSnapshot(s));

  static Future<StoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoresRecord.fromSnapshot(s));

  static StoresRecord fromSnapshot(DocumentSnapshot snapshot) => StoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoresRecord._(reference, mapFromFirestore(data));

  static StoresRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      StoresRecord.getDocumentFromData(
        {
          'storeName': snapshot.data['storeName'],
          'storeAddress': snapshot.data['storeAddress'],
          'storePhoneNumber': snapshot.data['storePhoneNumber'],
          'storeEmail': snapshot.data['storeEmail'],
          'storeLogo': snapshot.data['storeLogo'],
          'storeBio': snapshot.data['storeBio'],
          'storeUser': convertAlgoliaParam(
            snapshot.data['storeUser'],
            ParamType.DocumentReference,
            false,
          ),
          'active': snapshot.data['active'],
          'storeCoverImg': snapshot.data['storeCoverImg'],
        },
        StoresRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<StoresRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'stores',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'StoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoresRecordData({
  String? storeName,
  String? storeAddress,
  String? storePhoneNumber,
  String? storeEmail,
  String? storeLogo,
  String? storeBio,
  DocumentReference? storeUser,
  bool? active,
  String? storeCoverImg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'storeName': storeName,
      'storeAddress': storeAddress,
      'storePhoneNumber': storePhoneNumber,
      'storeEmail': storeEmail,
      'storeLogo': storeLogo,
      'storeBio': storeBio,
      'storeUser': storeUser,
      'active': active,
      'storeCoverImg': storeCoverImg,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoresRecordDocumentEquality implements Equality<StoresRecord> {
  const StoresRecordDocumentEquality();

  @override
  bool equals(StoresRecord? e1, StoresRecord? e2) {
    return e1?.storeName == e2?.storeName &&
        e1?.storeAddress == e2?.storeAddress &&
        e1?.storePhoneNumber == e2?.storePhoneNumber &&
        e1?.storeEmail == e2?.storeEmail &&
        e1?.storeLogo == e2?.storeLogo &&
        e1?.storeBio == e2?.storeBio &&
        e1?.storeUser == e2?.storeUser &&
        e1?.active == e2?.active &&
        e1?.storeCoverImg == e2?.storeCoverImg;
  }

  @override
  int hash(StoresRecord? e) => const ListEquality().hash([
        e?.storeName,
        e?.storeAddress,
        e?.storePhoneNumber,
        e?.storeEmail,
        e?.storeLogo,
        e?.storeBio,
        e?.storeUser,
        e?.active,
        e?.storeCoverImg
      ]);

  @override
  bool isValidKey(Object? o) => o is StoresRecord;
}

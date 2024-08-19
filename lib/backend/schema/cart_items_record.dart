import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemsRecord extends FirestoreRecord {
  CartItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "quantite" field.
  int? _quantite;
  int get quantite => _quantite ?? 0;
  bool hasQuantite() => _quantite != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _quantite = castToType<int>(snapshotData['quantite']);
    _price = castToType<double>(snapshotData['price']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('cart_items')
          : FirebaseFirestore.instance.collectionGroup('cart_items');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('cart_items').doc(id);

  static Stream<CartItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartItemsRecord.fromSnapshot(s));

  static Future<CartItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartItemsRecord.fromSnapshot(s));

  static CartItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CartItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartItemsRecordData({
  DocumentReference? productRef,
  int? quantite,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productRef': productRef,
      'quantite': quantite,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartItemsRecordDocumentEquality implements Equality<CartItemsRecord> {
  const CartItemsRecordDocumentEquality();

  @override
  bool equals(CartItemsRecord? e1, CartItemsRecord? e2) {
    return e1?.productRef == e2?.productRef &&
        e1?.quantite == e2?.quantite &&
        e1?.price == e2?.price;
  }

  @override
  int hash(CartItemsRecord? e) =>
      const ListEquality().hash([e?.productRef, e?.quantite, e?.price]);

  @override
  bool isValidKey(Object? o) => o is CartItemsRecord;
}

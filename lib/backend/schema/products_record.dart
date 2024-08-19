import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "categorie_id" field.
  DocumentReference? _categorieId;
  DocumentReference? get categorieId => _categorieId;
  bool hasCategorieId() => _categorieId != null;

  // "store" field.
  DocumentReference? _store;
  DocumentReference? get store => _store;
  bool hasStore() => _store != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "categories" field.
  List<DocumentReference>? _categories;
  List<DocumentReference> get categories => _categories ?? const [];
  bool hasCategories() => _categories != null;

  // "favorites" field.
  List<DocumentReference>? _favorites;
  List<DocumentReference> get favorites => _favorites ?? const [];
  bool hasFavorites() => _favorites != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _categorieId = snapshotData['categorie_id'] as DocumentReference?;
    _store = snapshotData['store'] as DocumentReference?;
    _images = getDataList(snapshotData['images']);
    _categories = getDataList(snapshotData['categories']);
    _favorites = getDataList(snapshotData['favorites']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  static ProductsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ProductsRecord.getDocumentFromData(
        {
          'name': snapshot.data['name'],
          'description': snapshot.data['description'],
          'specifications': snapshot.data['specifications'],
          'price': convertAlgoliaParam(
            snapshot.data['price'],
            ParamType.double,
            false,
          ),
          'created_at': convertAlgoliaParam(
            snapshot.data['created_at'],
            ParamType.DateTime,
            false,
          ),
          'modified_at': convertAlgoliaParam(
            snapshot.data['modified_at'],
            ParamType.DateTime,
            false,
          ),
          'on_sale': snapshot.data['on_sale'],
          'sale_price': convertAlgoliaParam(
            snapshot.data['sale_price'],
            ParamType.double,
            false,
          ),
          'quantity': convertAlgoliaParam(
            snapshot.data['quantity'],
            ParamType.int,
            false,
          ),
          'categorie_id': convertAlgoliaParam(
            snapshot.data['categorie_id'],
            ParamType.DocumentReference,
            false,
          ),
          'store': convertAlgoliaParam(
            snapshot.data['store'],
            ParamType.DocumentReference,
            false,
          ),
          'images': safeGet(
            () => snapshot.data['images'].toList(),
          ),
          'categories': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['categories'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'favorites': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['favorites'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
        },
        ProductsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ProductsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'products',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  DocumentReference? categorieId,
  DocumentReference? store,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'categorie_id': categorieId,
      'store': store,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.categorieId == e2?.categorieId &&
        e1?.store == e2?.store &&
        listEquality.equals(e1?.images, e2?.images) &&
        listEquality.equals(e1?.categories, e2?.categories) &&
        listEquality.equals(e1?.favorites, e2?.favorites);
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.categorieId,
        e?.store,
        e?.images,
        e?.categories,
        e?.favorites
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}

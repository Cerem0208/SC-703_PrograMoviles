import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "_id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  bool hasEmpresa() => _empresa != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['_id']);
    _nombre = snapshotData['nombre'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _empresa = snapshotData['empresa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  int? id,
  String? nombre,
  double? precio,
  int? cantidad,
  String? empresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      '_id': id,
      'nombre': nombre,
      'precio': precio,
      'cantidad': cantidad,
      'empresa': empresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nombre == e2?.nombre &&
        e1?.precio == e2?.precio &&
        e1?.cantidad == e2?.cantidad &&
        e1?.empresa == e2?.empresa;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality()
      .hash([e?.id, e?.nombre, e?.precio, e?.cantidad, e?.empresa]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}

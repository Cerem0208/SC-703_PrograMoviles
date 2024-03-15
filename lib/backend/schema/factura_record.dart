import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacturaRecord extends FirestoreRecord {
  FacturaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  bool hasEmpresa() => _empresa != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "pApellido" field.
  String? _pApellido;
  String get pApellido => _pApellido ?? '';
  bool hasPApellido() => _pApellido != null;

  // "sApellido" field.
  String? _sApellido;
  String get sApellido => _sApellido ?? '';
  bool hasSApellido() => _sApellido != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  void _initializeFields() {
    _empresa = snapshotData['empresa'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _pApellido = snapshotData['pApellido'] as String?;
    _sApellido = snapshotData['sApellido'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _precio = castToType<double>(snapshotData['precio']);
    _total = castToType<double>(snapshotData['total']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('factura');

  static Stream<FacturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacturaRecord.fromSnapshot(s));

  static Future<FacturaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacturaRecord.fromSnapshot(s));

  static FacturaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacturaRecordData({
  String? empresa,
  String? nombre,
  String? pApellido,
  String? sApellido,
  DateTime? fecha,
  double? precio,
  double? total,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'empresa': empresa,
      'nombre': nombre,
      'pApellido': pApellido,
      'sApellido': sApellido,
      'fecha': fecha,
      'precio': precio,
      'total': total,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacturaRecordDocumentEquality implements Equality<FacturaRecord> {
  const FacturaRecordDocumentEquality();

  @override
  bool equals(FacturaRecord? e1, FacturaRecord? e2) {
    return e1?.empresa == e2?.empresa &&
        e1?.nombre == e2?.nombre &&
        e1?.pApellido == e2?.pApellido &&
        e1?.sApellido == e2?.sApellido &&
        e1?.fecha == e2?.fecha &&
        e1?.precio == e2?.precio &&
        e1?.total == e2?.total;
  }

  @override
  int hash(FacturaRecord? e) => const ListEquality().hash([
        e?.empresa,
        e?.nombre,
        e?.pApellido,
        e?.sApellido,
        e?.fecha,
        e?.precio,
        e?.total
      ]);

  @override
  bool isValidKey(Object? o) => o is FacturaRecord;
}

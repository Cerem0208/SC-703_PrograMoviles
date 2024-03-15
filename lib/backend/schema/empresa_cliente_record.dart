import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaClienteRecord extends FirestoreRecord {
  EmpresaClienteRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreCliente" field.
  String? _nombreCliente;
  String get nombreCliente => _nombreCliente ?? '';
  bool hasNombreCliente() => _nombreCliente != null;

  // "telefonoCliente" field.
  int? _telefonoCliente;
  int get telefonoCliente => _telefonoCliente ?? 0;
  bool hasTelefonoCliente() => _telefonoCliente != null;

  // "correoCliente" field.
  String? _correoCliente;
  String get correoCliente => _correoCliente ?? '';
  bool hasCorreoCliente() => _correoCliente != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _nombreCliente = snapshotData['nombreCliente'] as String?;
    _telefonoCliente = castToType<int>(snapshotData['telefonoCliente']);
    _correoCliente = snapshotData['correoCliente'] as String?;
    _id = castToType<int>(snapshotData['id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresaCliente');

  static Stream<EmpresaClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresaClienteRecord.fromSnapshot(s));

  static Future<EmpresaClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresaClienteRecord.fromSnapshot(s));

  static EmpresaClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresaClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresaClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresaClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresaClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresaClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresaClienteRecordData({
  String? nombreCliente,
  int? telefonoCliente,
  String? correoCliente,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCliente': nombreCliente,
      'telefonoCliente': telefonoCliente,
      'correoCliente': correoCliente,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresaClienteRecordDocumentEquality
    implements Equality<EmpresaClienteRecord> {
  const EmpresaClienteRecordDocumentEquality();

  @override
  bool equals(EmpresaClienteRecord? e1, EmpresaClienteRecord? e2) {
    return e1?.nombreCliente == e2?.nombreCliente &&
        e1?.telefonoCliente == e2?.telefonoCliente &&
        e1?.correoCliente == e2?.correoCliente &&
        e1?.id == e2?.id;
  }

  @override
  int hash(EmpresaClienteRecord? e) => const ListEquality()
      .hash([e?.nombreCliente, e?.telefonoCliente, e?.correoCliente, e?.id]);

  @override
  bool isValidKey(Object? o) => o is EmpresaClienteRecord;
}

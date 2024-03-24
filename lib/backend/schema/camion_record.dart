import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CamionRecord extends FirestoreRecord {
  CamionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "matricula" field.
  String? _matricula;
  String get matricula => _matricula ?? '';
  bool hasMatricula() => _matricula != null;

  // "conductor" field.
  String? _conductor;
  String get conductor => _conductor ?? '';
  bool hasConductor() => _conductor != null;

  // "cantidaOrdenes" field.
  int? _cantidaOrdenes;
  int get cantidaOrdenes => _cantidaOrdenes ?? 0;
  bool hasCantidaOrdenes() => _cantidaOrdenes != null;

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  bool hasEmpresa() => _empresa != null;

  void _initializeFields() {
    _matricula = snapshotData['matricula'] as String?;
    _conductor = snapshotData['conductor'] as String?;
    _cantidaOrdenes = castToType<int>(snapshotData['cantidaOrdenes']);
    _empresa = snapshotData['empresa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('camion');

  static Stream<CamionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CamionRecord.fromSnapshot(s));

  static Future<CamionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CamionRecord.fromSnapshot(s));

  static CamionRecord fromSnapshot(DocumentSnapshot snapshot) => CamionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CamionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CamionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CamionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CamionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCamionRecordData({
  String? matricula,
  String? conductor,
  int? cantidaOrdenes,
  String? empresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'matricula': matricula,
      'conductor': conductor,
      'cantidaOrdenes': cantidaOrdenes,
      'empresa': empresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class CamionRecordDocumentEquality implements Equality<CamionRecord> {
  const CamionRecordDocumentEquality();

  @override
  bool equals(CamionRecord? e1, CamionRecord? e2) {
    return e1?.matricula == e2?.matricula &&
        e1?.conductor == e2?.conductor &&
        e1?.cantidaOrdenes == e2?.cantidaOrdenes &&
        e1?.empresa == e2?.empresa;
  }

  @override
  int hash(CamionRecord? e) => const ListEquality()
      .hash([e?.matricula, e?.conductor, e?.cantidaOrdenes, e?.empresa]);

  @override
  bool isValidKey(Object? o) => o is CamionRecord;
}

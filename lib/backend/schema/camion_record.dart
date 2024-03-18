import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CamionRecord extends FirestoreRecord {
  CamionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
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
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class CamionRecordDocumentEquality implements Equality<CamionRecord> {
  const CamionRecordDocumentEquality();

  @override
  bool equals(CamionRecord? e1, CamionRecord? e2) {
    return e1?.nombre == e2?.nombre;
  }

  @override
  int hash(CamionRecord? e) => const ListEquality().hash([e?.nombre]);

  @override
  bool isValidKey(Object? o) => o is CamionRecord;
}
import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OrdenesRecord extends FirestoreRecord {
  OrdenesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  bool hasEmpresa() => _empresa != null;

  void _initializeFields() {
    _empresa = snapshotData['empresa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordenes');

  static Stream<OrdenesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdenesRecord.fromSnapshot(s));

  static Future<OrdenesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdenesRecord.fromSnapshot(s));

  static OrdenesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrdenesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdenesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdenesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdenesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdenesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdenesRecordData({
  String? empresa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'empresa': empresa,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdenesRecordDocumentEquality implements Equality<OrdenesRecord> {
  const OrdenesRecordDocumentEquality();

  @override
  bool equals(OrdenesRecord? e1, OrdenesRecord? e2) {
    return e1?.empresa == e2?.empresa;
  }

  @override
  int hash(OrdenesRecord? e) => const ListEquality().hash([e?.empresa]);

  @override
  bool isValidKey(Object? o) => o is OrdenesRecord;
}

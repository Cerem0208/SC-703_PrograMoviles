import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RutasRecord extends FirestoreRecord {
  RutasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "distrito" field.
  String? _distrito;
  String get distrito => _distrito ?? '';
  bool hasDistrito() => _distrito != null;

  // "calle" field.
  String? _calle;
  String get calle => _calle ?? '';
  bool hasCalle() => _calle != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _provincia = snapshotData['provincia'] as String?;
    _canton = snapshotData['canton'] as String?;
    _distrito = snapshotData['distrito'] as String?;
    _calle = snapshotData['calle'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rutas');

  static Stream<RutasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RutasRecord.fromSnapshot(s));

  static Future<RutasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RutasRecord.fromSnapshot(s));

  static RutasRecord fromSnapshot(DocumentSnapshot snapshot) => RutasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RutasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RutasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RutasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RutasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRutasRecordData({
  int? id,
  String? provincia,
  String? canton,
  String? distrito,
  String? calle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'provincia': provincia,
      'canton': canton,
      'distrito': distrito,
      'calle': calle,
    }.withoutNulls,
  );

  return firestoreData;
}

class RutasRecordDocumentEquality implements Equality<RutasRecord> {
  const RutasRecordDocumentEquality();

  @override
  bool equals(RutasRecord? e1, RutasRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.provincia == e2?.provincia &&
        e1?.canton == e2?.canton &&
        e1?.distrito == e2?.distrito &&
        e1?.calle == e2?.calle;
  }

  @override
  int hash(RutasRecord? e) => const ListEquality()
      .hash([e?.id, e?.provincia, e?.canton, e?.distrito, e?.calle]);

  @override
  bool isValidKey(Object? o) => o is RutasRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isVendedor" field.
  bool? _isVendedor;
  bool get isVendedor => _isVendedor ?? false;
  bool hasIsVendedor() => _isVendedor != null;

  // "isBodeguero" field.
  bool? _isBodeguero;
  bool get isBodeguero => _isBodeguero ?? false;
  bool hasIsBodeguero() => _isBodeguero != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "primerApellido" field.
  String? _primerApellido;
  String get primerApellido => _primerApellido ?? '';
  bool hasPrimerApellido() => _primerApellido != null;

  // "segundoApellido" field.
  String? _segundoApellido;
  String get segundoApellido => _segundoApellido ?? '';
  bool hasSegundoApellido() => _segundoApellido != null;

  // "dSalario" field.
  double? _dSalario;
  double get dSalario => _dSalario ?? 0.0;
  bool hasDSalario() => _dSalario != null;

  // "sRol" field.
  String? _sRol;
  String get sRol => _sRol ?? '';
  bool hasSRol() => _sRol != null;

  // "sEmpresa" field.
  String? _sEmpresa;
  String get sEmpresa => _sEmpresa ?? '';
  bool hasSEmpresa() => _sEmpresa != null;

  // "_id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isVendedor = snapshotData['isVendedor'] as bool?;
    _isBodeguero = snapshotData['isBodeguero'] as bool?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _primerApellido = snapshotData['primerApellido'] as String?;
    _segundoApellido = snapshotData['segundoApellido'] as String?;
    _dSalario = castToType<double>(snapshotData['dSalario']);
    _sRol = snapshotData['sRol'] as String?;
    _sEmpresa = snapshotData['sEmpresa'] as String?;
    _id = castToType<int>(snapshotData['_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  bool? isAdmin,
  bool? isVendedor,
  bool? isBodeguero,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? primerApellido,
  String? segundoApellido,
  double? dSalario,
  String? sRol,
  String? sEmpresa,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isAdmin': isAdmin,
      'isVendedor': isVendedor,
      'isBodeguero': isBodeguero,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'primerApellido': primerApellido,
      'segundoApellido': segundoApellido,
      'dSalario': dSalario,
      'sRol': sRol,
      'sEmpresa': sEmpresa,
      '_id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.isAdmin == e2?.isAdmin &&
        e1?.isVendedor == e2?.isVendedor &&
        e1?.isBodeguero == e2?.isBodeguero &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.primerApellido == e2?.primerApellido &&
        e1?.segundoApellido == e2?.segundoApellido &&
        e1?.dSalario == e2?.dSalario &&
        e1?.sRol == e2?.sRol &&
        e1?.sEmpresa == e2?.sEmpresa &&
        e1?.id == e2?.id;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.isAdmin,
        e?.isVendedor,
        e?.isBodeguero,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.primerApellido,
        e?.segundoApellido,
        e?.dSalario,
        e?.sRol,
        e?.sEmpresa,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

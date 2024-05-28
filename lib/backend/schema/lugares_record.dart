import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LugaresRecord extends FirestoreRecord {
  LugaresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _foto = snapshotData['foto'] as String?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lugares');

  static Stream<LugaresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LugaresRecord.fromSnapshot(s));

  static Future<LugaresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LugaresRecord.fromSnapshot(s));

  static LugaresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LugaresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LugaresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LugaresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LugaresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LugaresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLugaresRecordData({
  String? nombre,
  String? direccion,
  String? foto,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'direccion': direccion,
      'foto': foto,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class LugaresRecordDocumentEquality implements Equality<LugaresRecord> {
  const LugaresRecordDocumentEquality();

  @override
  bool equals(LugaresRecord? e1, LugaresRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.direccion == e2?.direccion &&
        e1?.foto == e2?.foto &&
        e1?.location == e2?.location;
  }

  @override
  int hash(LugaresRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.direccion, e?.foto, e?.location]);

  @override
  bool isValidKey(Object? o) => o is LugaresRecord;
}

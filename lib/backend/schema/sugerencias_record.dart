import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SugerenciasRecord extends FirestoreRecord {
  SugerenciasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sugerencias');

  static Stream<SugerenciasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SugerenciasRecord.fromSnapshot(s));

  static Future<SugerenciasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SugerenciasRecord.fromSnapshot(s));

  static SugerenciasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SugerenciasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SugerenciasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SugerenciasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SugerenciasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SugerenciasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSugerenciasRecordData({
  String? descripcion,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class SugerenciasRecordDocumentEquality implements Equality<SugerenciasRecord> {
  const SugerenciasRecordDocumentEquality();

  @override
  bool equals(SugerenciasRecord? e1, SugerenciasRecord? e2) {
    return e1?.descripcion == e2?.descripcion && e1?.fecha == e2?.fecha;
  }

  @override
  int hash(SugerenciasRecord? e) =>
      const ListEquality().hash([e?.descripcion, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is SugerenciasRecord;
}

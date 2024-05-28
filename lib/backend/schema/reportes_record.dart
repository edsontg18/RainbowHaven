import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportesRecord extends FirestoreRecord {
  ReportesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "radiobutton" field.
  String? _radiobutton;
  String get radiobutton => _radiobutton ?? '';
  bool hasRadiobutton() => _radiobutton != null;

  void _initializeFields() {
    _fecha = snapshotData['fecha'] as DateTime?;
    _descripcion = snapshotData['descripcion'] as String?;
    _radiobutton = snapshotData['radiobutton'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reportes');

  static Stream<ReportesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportesRecord.fromSnapshot(s));

  static Future<ReportesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportesRecord.fromSnapshot(s));

  static ReportesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportesRecordData({
  DateTime? fecha,
  String? descripcion,
  String? radiobutton,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha': fecha,
      'descripcion': descripcion,
      'radiobutton': radiobutton,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportesRecordDocumentEquality implements Equality<ReportesRecord> {
  const ReportesRecordDocumentEquality();

  @override
  bool equals(ReportesRecord? e1, ReportesRecord? e2) {
    return e1?.fecha == e2?.fecha &&
        e1?.descripcion == e2?.descripcion &&
        e1?.radiobutton == e2?.radiobutton;
  }

  @override
  int hash(ReportesRecord? e) =>
      const ListEquality().hash([e?.fecha, e?.descripcion, e?.radiobutton]);

  @override
  bool isValidKey(Object? o) => o is ReportesRecord;
}

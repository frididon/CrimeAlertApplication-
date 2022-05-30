import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'police_admin_record.g.dart';

abstract class PoliceAdminRecord
    implements Built<PoliceAdminRecord, PoliceAdminRecordBuilder> {
  static Serializer<PoliceAdminRecord> get serializer =>
      _$policeAdminRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'FirstName')
  String get firstName;

  @nullable
  @BuiltValueField(wireName: 'LastName')
  String get lastName;

  @nullable
  String get uid;

  @nullable
  String get email;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PoliceAdminRecordBuilder builder) => builder
    ..firstName = ''
    ..lastName = ''
    ..uid = ''
    ..email = ''
    ..password = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PoliceAdmin');

  static Stream<PoliceAdminRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PoliceAdminRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PoliceAdminRecord._();
  factory PoliceAdminRecord([void Function(PoliceAdminRecordBuilder) updates]) =
      _$PoliceAdminRecord;

  static PoliceAdminRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPoliceAdminRecordData({
  String firstName,
  String lastName,
  String uid,
  String email,
  String password,
}) =>
    serializers.toFirestore(
        PoliceAdminRecord.serializer,
        PoliceAdminRecord((p) => p
          ..firstName = firstName
          ..lastName = lastName
          ..uid = uid
          ..email = email
          ..password = password));

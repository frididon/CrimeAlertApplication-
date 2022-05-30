import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'registration_record.g.dart';

abstract class RegistrationRecord
    implements Built<RegistrationRecord, RegistrationRecordBuilder> {
  static Serializer<RegistrationRecord> get serializer =>
      _$registrationRecordSerializer;

  @nullable
  String get address;

  @nullable
  String get parish;

  @nullable
  @BuiltValueField(wireName: 'full_name')
  String get fullName;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  String get createdTime;

  @nullable
  String get trn;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RegistrationRecordBuilder builder) => builder
    ..address = ''
    ..parish = ''
    ..fullName = ''
    ..createdTime = ''
    ..trn = ''
    ..email = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('registration');

  static Stream<RegistrationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RegistrationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  RegistrationRecord._();
  factory RegistrationRecord(
          [void Function(RegistrationRecordBuilder) updates]) =
      _$RegistrationRecord;

  static RegistrationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRegistrationRecordData({
  String address,
  String parish,
  String fullName,
  String createdTime,
  String trn,
  String email,
  String photoUrl,
}) =>
    serializers.toFirestore(
        RegistrationRecord.serializer,
        RegistrationRecord((r) => r
          ..address = address
          ..parish = parish
          ..fullName = fullName
          ..createdTime = createdTime
          ..trn = trn
          ..email = email
          ..photoUrl = photoUrl));

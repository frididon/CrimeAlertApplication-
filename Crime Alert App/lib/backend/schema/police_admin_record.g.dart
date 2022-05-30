// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'police_admin_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PoliceAdminRecord> _$policeAdminRecordSerializer =
    new _$PoliceAdminRecordSerializer();

class _$PoliceAdminRecordSerializer
    implements StructuredSerializer<PoliceAdminRecord> {
  @override
  final Iterable<Type> types = const [PoliceAdminRecord, _$PoliceAdminRecord];
  @override
  final String wireName = 'PoliceAdminRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PoliceAdminRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('FirstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('LastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  PoliceAdminRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PoliceAdminRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'FirstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$PoliceAdminRecord extends PoliceAdminRecord {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String uid;
  @override
  final String email;
  @override
  final String password;
  @override
  final DocumentReference<Object> reference;

  factory _$PoliceAdminRecord(
          [void Function(PoliceAdminRecordBuilder) updates]) =>
      (new PoliceAdminRecordBuilder()..update(updates)).build();

  _$PoliceAdminRecord._(
      {this.firstName,
      this.lastName,
      this.uid,
      this.email,
      this.password,
      this.reference})
      : super._();

  @override
  PoliceAdminRecord rebuild(void Function(PoliceAdminRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoliceAdminRecordBuilder toBuilder() =>
      new PoliceAdminRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PoliceAdminRecord &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        uid == other.uid &&
        email == other.email &&
        password == other.password &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, firstName.hashCode), lastName.hashCode),
                    uid.hashCode),
                email.hashCode),
            password.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PoliceAdminRecord')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('uid', uid)
          ..add('email', email)
          ..add('password', password)
          ..add('reference', reference))
        .toString();
  }
}

class PoliceAdminRecordBuilder
    implements Builder<PoliceAdminRecord, PoliceAdminRecordBuilder> {
  _$PoliceAdminRecord _$v;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PoliceAdminRecordBuilder() {
    PoliceAdminRecord._initializeBuilder(this);
  }

  PoliceAdminRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _uid = $v.uid;
      _email = $v.email;
      _password = $v.password;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PoliceAdminRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PoliceAdminRecord;
  }

  @override
  void update(void Function(PoliceAdminRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PoliceAdminRecord build() {
    final _$result = _$v ??
        new _$PoliceAdminRecord._(
            firstName: firstName,
            lastName: lastName,
            uid: uid,
            email: email,
            password: password,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegistrationRecord> _$registrationRecordSerializer =
    new _$RegistrationRecordSerializer();

class _$RegistrationRecordSerializer
    implements StructuredSerializer<RegistrationRecord> {
  @override
  final Iterable<Type> types = const [RegistrationRecord, _$RegistrationRecord];
  @override
  final String wireName = 'RegistrationRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RegistrationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parish;
    if (value != null) {
      result
        ..add('parish')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trn;
    if (value != null) {
      result
        ..add('trn')
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
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
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
  RegistrationRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegistrationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parish':
          result.parish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trn':
          result.trn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
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

class _$RegistrationRecord extends RegistrationRecord {
  @override
  final String address;
  @override
  final String parish;
  @override
  final String fullName;
  @override
  final String createdTime;
  @override
  final String trn;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final DocumentReference<Object> reference;

  factory _$RegistrationRecord(
          [void Function(RegistrationRecordBuilder) updates]) =>
      (new RegistrationRecordBuilder()..update(updates)).build();

  _$RegistrationRecord._(
      {this.address,
      this.parish,
      this.fullName,
      this.createdTime,
      this.trn,
      this.email,
      this.photoUrl,
      this.reference})
      : super._();

  @override
  RegistrationRecord rebuild(
          void Function(RegistrationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationRecordBuilder toBuilder() =>
      new RegistrationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationRecord &&
        address == other.address &&
        parish == other.parish &&
        fullName == other.fullName &&
        createdTime == other.createdTime &&
        trn == other.trn &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, address.hashCode), parish.hashCode),
                            fullName.hashCode),
                        createdTime.hashCode),
                    trn.hashCode),
                email.hashCode),
            photoUrl.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationRecord')
          ..add('address', address)
          ..add('parish', parish)
          ..add('fullName', fullName)
          ..add('createdTime', createdTime)
          ..add('trn', trn)
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('reference', reference))
        .toString();
  }
}

class RegistrationRecordBuilder
    implements Builder<RegistrationRecord, RegistrationRecordBuilder> {
  _$RegistrationRecord _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _parish;
  String get parish => _$this._parish;
  set parish(String parish) => _$this._parish = parish;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _createdTime;
  String get createdTime => _$this._createdTime;
  set createdTime(String createdTime) => _$this._createdTime = createdTime;

  String _trn;
  String get trn => _$this._trn;
  set trn(String trn) => _$this._trn = trn;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RegistrationRecordBuilder() {
    RegistrationRecord._initializeBuilder(this);
  }

  RegistrationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _parish = $v.parish;
      _fullName = $v.fullName;
      _createdTime = $v.createdTime;
      _trn = $v.trn;
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistrationRecord;
  }

  @override
  void update(void Function(RegistrationRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationRecord build() {
    final _$result = _$v ??
        new _$RegistrationRecord._(
            address: address,
            parish: parish,
            fullName: fullName,
            createdTime: createdTime,
            trn: trn,
            email: email,
            photoUrl: photoUrl,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

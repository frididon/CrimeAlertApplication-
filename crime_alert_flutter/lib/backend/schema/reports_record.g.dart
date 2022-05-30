// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReportsRecord> _$reportsRecordSerializer =
    new _$ReportsRecordSerializer();

class _$ReportsRecordSerializer implements StructuredSerializer<ReportsRecord> {
  @override
  final Iterable<Type> types = const [ReportsRecord, _$ReportsRecord];
  @override
  final String wireName = 'ReportsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ReportsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.typeCrime;
    if (value != null) {
      result
        ..add('typeCrime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('dateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('Details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dataTime;
    if (value != null) {
      result
        ..add('dataTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.verificationStatus;
    if (value != null) {
      result
        ..add('verification_status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.identifier;
    if (value != null) {
      result
        ..add('Identifier')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.confirmedBy;
    if (value != null) {
      result
        ..add('confirmed_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
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
  ReportsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'typeCrime':
          result.typeCrime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dataTime':
          result.dataTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verification_status':
          result.verificationStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Identifier':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confirmed_by':
          result.confirmedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
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

class _$ReportsRecord extends ReportsRecord {
  @override
  final DateTime createdTime;
  @override
  final String typeCrime;
  @override
  final String location;
  @override
  final DateTime dateTime;
  @override
  final String details;
  @override
  final String dataTime;
  @override
  final bool verificationStatus;
  @override
  final String identifier;
  @override
  final String confirmedBy;
  @override
  final String address;
  @override
  final DocumentReference<Object> reference;

  factory _$ReportsRecord([void Function(ReportsRecordBuilder) updates]) =>
      (new ReportsRecordBuilder()..update(updates)).build();

  _$ReportsRecord._(
      {this.createdTime,
      this.typeCrime,
      this.location,
      this.dateTime,
      this.details,
      this.dataTime,
      this.verificationStatus,
      this.identifier,
      this.confirmedBy,
      this.address,
      this.reference})
      : super._();

  @override
  ReportsRecord rebuild(void Function(ReportsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportsRecordBuilder toBuilder() => new ReportsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportsRecord &&
        createdTime == other.createdTime &&
        typeCrime == other.typeCrime &&
        location == other.location &&
        dateTime == other.dateTime &&
        details == other.details &&
        dataTime == other.dataTime &&
        verificationStatus == other.verificationStatus &&
        identifier == other.identifier &&
        confirmedBy == other.confirmedBy &&
        address == other.address &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, createdTime.hashCode),
                                            typeCrime.hashCode),
                                        location.hashCode),
                                    dateTime.hashCode),
                                details.hashCode),
                            dataTime.hashCode),
                        verificationStatus.hashCode),
                    identifier.hashCode),
                confirmedBy.hashCode),
            address.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReportsRecord')
          ..add('createdTime', createdTime)
          ..add('typeCrime', typeCrime)
          ..add('location', location)
          ..add('dateTime', dateTime)
          ..add('details', details)
          ..add('dataTime', dataTime)
          ..add('verificationStatus', verificationStatus)
          ..add('identifier', identifier)
          ..add('confirmedBy', confirmedBy)
          ..add('address', address)
          ..add('reference', reference))
        .toString();
  }
}

class ReportsRecordBuilder
    implements Builder<ReportsRecord, ReportsRecordBuilder> {
  _$ReportsRecord _$v;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _typeCrime;
  String get typeCrime => _$this._typeCrime;
  set typeCrime(String typeCrime) => _$this._typeCrime = typeCrime;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  DateTime _dateTime;
  DateTime get dateTime => _$this._dateTime;
  set dateTime(DateTime dateTime) => _$this._dateTime = dateTime;

  String _details;
  String get details => _$this._details;
  set details(String details) => _$this._details = details;

  String _dataTime;
  String get dataTime => _$this._dataTime;
  set dataTime(String dataTime) => _$this._dataTime = dataTime;

  bool _verificationStatus;
  bool get verificationStatus => _$this._verificationStatus;
  set verificationStatus(bool verificationStatus) =>
      _$this._verificationStatus = verificationStatus;

  String _identifier;
  String get identifier => _$this._identifier;
  set identifier(String identifier) => _$this._identifier = identifier;

  String _confirmedBy;
  String get confirmedBy => _$this._confirmedBy;
  set confirmedBy(String confirmedBy) => _$this._confirmedBy = confirmedBy;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ReportsRecordBuilder() {
    ReportsRecord._initializeBuilder(this);
  }

  ReportsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _typeCrime = $v.typeCrime;
      _location = $v.location;
      _dateTime = $v.dateTime;
      _details = $v.details;
      _dataTime = $v.dataTime;
      _verificationStatus = $v.verificationStatus;
      _identifier = $v.identifier;
      _confirmedBy = $v.confirmedBy;
      _address = $v.address;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportsRecord;
  }

  @override
  void update(void Function(ReportsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReportsRecord build() {
    final _$result = _$v ??
        new _$ReportsRecord._(
            createdTime: createdTime,
            typeCrime: typeCrime,
            location: location,
            dateTime: dateTime,
            details: details,
            dataTime: dataTime,
            verificationStatus: verificationStatus,
            identifier: identifier,
            confirmedBy: confirmedBy,
            address: address,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

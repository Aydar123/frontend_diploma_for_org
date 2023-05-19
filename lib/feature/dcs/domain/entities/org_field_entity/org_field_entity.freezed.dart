// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'org_field_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrgFieldEntity _$OrgFieldEntityFromJson(Map<String, dynamic> json) {
  return _OrgFieldEntity.fromJson(json);
}

/// @nodoc
mixin _$OrgFieldEntity {
  int get id => throw _privateConstructorUsedError;
  OrgEntity? get orgId => throw _privateConstructorUsedError;
  FieldEntity? get fieldId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrgFieldEntityCopyWith<OrgFieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrgFieldEntityCopyWith<$Res> {
  factory $OrgFieldEntityCopyWith(
          OrgFieldEntity value, $Res Function(OrgFieldEntity) then) =
      _$OrgFieldEntityCopyWithImpl<$Res, OrgFieldEntity>;
  @useResult
  $Res call({int id, OrgEntity? orgId, FieldEntity? fieldId});

  $OrgEntityCopyWith<$Res>? get orgId;
  $FieldEntityCopyWith<$Res>? get fieldId;
}

/// @nodoc
class _$OrgFieldEntityCopyWithImpl<$Res, $Val extends OrgFieldEntity>
    implements $OrgFieldEntityCopyWith<$Res> {
  _$OrgFieldEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orgId = freezed,
    Object? fieldId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orgId: freezed == orgId
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as OrgEntity?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FieldEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrgEntityCopyWith<$Res>? get orgId {
    if (_value.orgId == null) {
      return null;
    }

    return $OrgEntityCopyWith<$Res>(_value.orgId!, (value) {
      return _then(_value.copyWith(orgId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldEntityCopyWith<$Res>? get fieldId {
    if (_value.fieldId == null) {
      return null;
    }

    return $FieldEntityCopyWith<$Res>(_value.fieldId!, (value) {
      return _then(_value.copyWith(fieldId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrgFieldEntityCopyWith<$Res>
    implements $OrgFieldEntityCopyWith<$Res> {
  factory _$$_OrgFieldEntityCopyWith(
          _$_OrgFieldEntity value, $Res Function(_$_OrgFieldEntity) then) =
      __$$_OrgFieldEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, OrgEntity? orgId, FieldEntity? fieldId});

  @override
  $OrgEntityCopyWith<$Res>? get orgId;
  @override
  $FieldEntityCopyWith<$Res>? get fieldId;
}

/// @nodoc
class __$$_OrgFieldEntityCopyWithImpl<$Res>
    extends _$OrgFieldEntityCopyWithImpl<$Res, _$_OrgFieldEntity>
    implements _$$_OrgFieldEntityCopyWith<$Res> {
  __$$_OrgFieldEntityCopyWithImpl(
      _$_OrgFieldEntity _value, $Res Function(_$_OrgFieldEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orgId = freezed,
    Object? fieldId = freezed,
  }) {
    return _then(_$_OrgFieldEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orgId: freezed == orgId
          ? _value.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as OrgEntity?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FieldEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrgFieldEntity implements _OrgFieldEntity {
  const _$_OrgFieldEntity(
      {required this.id, required this.orgId, required this.fieldId});

  factory _$_OrgFieldEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrgFieldEntityFromJson(json);

  @override
  final int id;
  @override
  final OrgEntity? orgId;
  @override
  final FieldEntity? fieldId;

  @override
  String toString() {
    return 'OrgFieldEntity(id: $id, orgId: $orgId, fieldId: $fieldId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrgFieldEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orgId, orgId) || other.orgId == orgId) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orgId, fieldId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrgFieldEntityCopyWith<_$_OrgFieldEntity> get copyWith =>
      __$$_OrgFieldEntityCopyWithImpl<_$_OrgFieldEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrgFieldEntityToJson(
      this,
    );
  }
}

abstract class _OrgFieldEntity implements OrgFieldEntity {
  const factory _OrgFieldEntity(
      {required final int id,
      required final OrgEntity? orgId,
      required final FieldEntity? fieldId}) = _$_OrgFieldEntity;

  factory _OrgFieldEntity.fromJson(Map<String, dynamic> json) =
      _$_OrgFieldEntity.fromJson;

  @override
  int get id;
  @override
  OrgEntity? get orgId;
  @override
  FieldEntity? get fieldId;
  @override
  @JsonKey(ignore: true)
  _$$_OrgFieldEntityCopyWith<_$_OrgFieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

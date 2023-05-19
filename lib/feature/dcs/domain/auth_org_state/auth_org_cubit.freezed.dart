// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_org_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthOrgState _$AuthOrgStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notAuthorized':
      return _AuthOrgStateNotAuthorized.fromJson(json);
    case 'authorized':
      return _AuthOrgStateAuthorized.fromJson(json);
    case 'waiting':
      return _AuthOrgStateWaiting.fromJson(json);
    case 'error':
      return _AuthOrgStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthOrgState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthOrgState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(OrgEntity orgEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(OrgEntity orgEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(OrgEntity orgEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthOrgStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthOrgStateAuthorized value) authorized,
    required TResult Function(_AuthOrgStateWaiting value) waiting,
    required TResult Function(_AuthOrgStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthOrgStateAuthorized value)? authorized,
    TResult? Function(_AuthOrgStateWaiting value)? waiting,
    TResult? Function(_AuthOrgStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthOrgStateAuthorized value)? authorized,
    TResult Function(_AuthOrgStateWaiting value)? waiting,
    TResult Function(_AuthOrgStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthOrgStateCopyWith<$Res> {
  factory $AuthOrgStateCopyWith(
          AuthOrgState value, $Res Function(AuthOrgState) then) =
      _$AuthOrgStateCopyWithImpl<$Res, AuthOrgState>;
}

/// @nodoc
class _$AuthOrgStateCopyWithImpl<$Res, $Val extends AuthOrgState>
    implements $AuthOrgStateCopyWith<$Res> {
  _$AuthOrgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthOrgStateNotAuthorizedCopyWith<$Res> {
  factory _$$_AuthOrgStateNotAuthorizedCopyWith(
          _$_AuthOrgStateNotAuthorized value,
          $Res Function(_$_AuthOrgStateNotAuthorized) then) =
      __$$_AuthOrgStateNotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthOrgStateNotAuthorizedCopyWithImpl<$Res>
    extends _$AuthOrgStateCopyWithImpl<$Res, _$_AuthOrgStateNotAuthorized>
    implements _$$_AuthOrgStateNotAuthorizedCopyWith<$Res> {
  __$$_AuthOrgStateNotAuthorizedCopyWithImpl(
      _$_AuthOrgStateNotAuthorized _value,
      $Res Function(_$_AuthOrgStateNotAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AuthOrgStateNotAuthorized implements _AuthOrgStateNotAuthorized {
  _$_AuthOrgStateNotAuthorized({final String? $type})
      : $type = $type ?? 'notAuthorized';

  factory _$_AuthOrgStateNotAuthorized.fromJson(Map<String, dynamic> json) =>
      _$$_AuthOrgStateNotAuthorizedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthOrgState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthOrgStateNotAuthorized);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(OrgEntity orgEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(OrgEntity orgEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(OrgEntity orgEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthOrgStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthOrgStateAuthorized value) authorized,
    required TResult Function(_AuthOrgStateWaiting value) waiting,
    required TResult Function(_AuthOrgStateError value) error,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthOrgStateAuthorized value)? authorized,
    TResult? Function(_AuthOrgStateWaiting value)? waiting,
    TResult? Function(_AuthOrgStateError value)? error,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthOrgStateAuthorized value)? authorized,
    TResult Function(_AuthOrgStateWaiting value)? waiting,
    TResult Function(_AuthOrgStateError value)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthOrgStateNotAuthorizedToJson(
      this,
    );
  }
}

abstract class _AuthOrgStateNotAuthorized implements AuthOrgState {
  factory _AuthOrgStateNotAuthorized() = _$_AuthOrgStateNotAuthorized;

  factory _AuthOrgStateNotAuthorized.fromJson(Map<String, dynamic> json) =
      _$_AuthOrgStateNotAuthorized.fromJson;
}

/// @nodoc
abstract class _$$_AuthOrgStateAuthorizedCopyWith<$Res> {
  factory _$$_AuthOrgStateAuthorizedCopyWith(_$_AuthOrgStateAuthorized value,
          $Res Function(_$_AuthOrgStateAuthorized) then) =
      __$$_AuthOrgStateAuthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({OrgEntity orgEntity});

  $OrgEntityCopyWith<$Res> get orgEntity;
}

/// @nodoc
class __$$_AuthOrgStateAuthorizedCopyWithImpl<$Res>
    extends _$AuthOrgStateCopyWithImpl<$Res, _$_AuthOrgStateAuthorized>
    implements _$$_AuthOrgStateAuthorizedCopyWith<$Res> {
  __$$_AuthOrgStateAuthorizedCopyWithImpl(_$_AuthOrgStateAuthorized _value,
      $Res Function(_$_AuthOrgStateAuthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orgEntity = null,
  }) {
    return _then(_$_AuthOrgStateAuthorized(
      null == orgEntity
          ? _value.orgEntity
          : orgEntity // ignore: cast_nullable_to_non_nullable
              as OrgEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrgEntityCopyWith<$Res> get orgEntity {
    return $OrgEntityCopyWith<$Res>(_value.orgEntity, (value) {
      return _then(_value.copyWith(orgEntity: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthOrgStateAuthorized implements _AuthOrgStateAuthorized {
  _$_AuthOrgStateAuthorized(this.orgEntity, {final String? $type})
      : $type = $type ?? 'authorized';

  factory _$_AuthOrgStateAuthorized.fromJson(Map<String, dynamic> json) =>
      _$$_AuthOrgStateAuthorizedFromJson(json);

  @override
  final OrgEntity orgEntity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthOrgState.authorized(orgEntity: $orgEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthOrgStateAuthorized &&
            (identical(other.orgEntity, orgEntity) ||
                other.orgEntity == orgEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orgEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthOrgStateAuthorizedCopyWith<_$_AuthOrgStateAuthorized> get copyWith =>
      __$$_AuthOrgStateAuthorizedCopyWithImpl<_$_AuthOrgStateAuthorized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(OrgEntity orgEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return authorized(orgEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(OrgEntity orgEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return authorized?.call(orgEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(OrgEntity orgEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(orgEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthOrgStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthOrgStateAuthorized value) authorized,
    required TResult Function(_AuthOrgStateWaiting value) waiting,
    required TResult Function(_AuthOrgStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthOrgStateAuthorized value)? authorized,
    TResult? Function(_AuthOrgStateWaiting value)? waiting,
    TResult? Function(_AuthOrgStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthOrgStateAuthorized value)? authorized,
    TResult Function(_AuthOrgStateWaiting value)? waiting,
    TResult Function(_AuthOrgStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthOrgStateAuthorizedToJson(
      this,
    );
  }
}

abstract class _AuthOrgStateAuthorized implements AuthOrgState {
  factory _AuthOrgStateAuthorized(final OrgEntity orgEntity) =
      _$_AuthOrgStateAuthorized;

  factory _AuthOrgStateAuthorized.fromJson(Map<String, dynamic> json) =
      _$_AuthOrgStateAuthorized.fromJson;

  OrgEntity get orgEntity;
  @JsonKey(ignore: true)
  _$$_AuthOrgStateAuthorizedCopyWith<_$_AuthOrgStateAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthOrgStateWaitingCopyWith<$Res> {
  factory _$$_AuthOrgStateWaitingCopyWith(_$_AuthOrgStateWaiting value,
          $Res Function(_$_AuthOrgStateWaiting) then) =
      __$$_AuthOrgStateWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthOrgStateWaitingCopyWithImpl<$Res>
    extends _$AuthOrgStateCopyWithImpl<$Res, _$_AuthOrgStateWaiting>
    implements _$$_AuthOrgStateWaitingCopyWith<$Res> {
  __$$_AuthOrgStateWaitingCopyWithImpl(_$_AuthOrgStateWaiting _value,
      $Res Function(_$_AuthOrgStateWaiting) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_AuthOrgStateWaiting implements _AuthOrgStateWaiting {
  _$_AuthOrgStateWaiting({final String? $type}) : $type = $type ?? 'waiting';

  factory _$_AuthOrgStateWaiting.fromJson(Map<String, dynamic> json) =>
      _$$_AuthOrgStateWaitingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthOrgState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthOrgStateWaiting);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(OrgEntity orgEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(OrgEntity orgEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(OrgEntity orgEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthOrgStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthOrgStateAuthorized value) authorized,
    required TResult Function(_AuthOrgStateWaiting value) waiting,
    required TResult Function(_AuthOrgStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthOrgStateAuthorized value)? authorized,
    TResult? Function(_AuthOrgStateWaiting value)? waiting,
    TResult? Function(_AuthOrgStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthOrgStateAuthorized value)? authorized,
    TResult Function(_AuthOrgStateWaiting value)? waiting,
    TResult Function(_AuthOrgStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthOrgStateWaitingToJson(
      this,
    );
  }
}

abstract class _AuthOrgStateWaiting implements AuthOrgState {
  factory _AuthOrgStateWaiting() = _$_AuthOrgStateWaiting;

  factory _AuthOrgStateWaiting.fromJson(Map<String, dynamic> json) =
      _$_AuthOrgStateWaiting.fromJson;
}

/// @nodoc
abstract class _$$_AuthOrgStateErrorCopyWith<$Res> {
  factory _$$_AuthOrgStateErrorCopyWith(_$_AuthOrgStateError value,
          $Res Function(_$_AuthOrgStateError) then) =
      __$$_AuthOrgStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_AuthOrgStateErrorCopyWithImpl<$Res>
    extends _$AuthOrgStateCopyWithImpl<$Res, _$_AuthOrgStateError>
    implements _$$_AuthOrgStateErrorCopyWith<$Res> {
  __$$_AuthOrgStateErrorCopyWithImpl(
      _$_AuthOrgStateError _value, $Res Function(_$_AuthOrgStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_AuthOrgStateError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthOrgStateError implements _AuthOrgStateError {
  _$_AuthOrgStateError(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$_AuthOrgStateError.fromJson(Map<String, dynamic> json) =>
      _$$_AuthOrgStateErrorFromJson(json);

  @override
  final dynamic error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthOrgState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthOrgStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthOrgStateErrorCopyWith<_$_AuthOrgStateError> get copyWith =>
      __$$_AuthOrgStateErrorCopyWithImpl<_$_AuthOrgStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(OrgEntity orgEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notAuthorized,
    TResult? Function(OrgEntity orgEntity)? authorized,
    TResult? Function()? waiting,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(OrgEntity orgEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthOrgStateNotAuthorized value) notAuthorized,
    required TResult Function(_AuthOrgStateAuthorized value) authorized,
    required TResult Function(_AuthOrgStateWaiting value) waiting,
    required TResult Function(_AuthOrgStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult? Function(_AuthOrgStateAuthorized value)? authorized,
    TResult? Function(_AuthOrgStateWaiting value)? waiting,
    TResult? Function(_AuthOrgStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthOrgStateNotAuthorized value)? notAuthorized,
    TResult Function(_AuthOrgStateAuthorized value)? authorized,
    TResult Function(_AuthOrgStateWaiting value)? waiting,
    TResult Function(_AuthOrgStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthOrgStateErrorToJson(
      this,
    );
  }
}

abstract class _AuthOrgStateError implements AuthOrgState {
  factory _AuthOrgStateError(final dynamic error) = _$_AuthOrgStateError;

  factory _AuthOrgStateError.fromJson(Map<String, dynamic> json) =
      _$_AuthOrgStateError.fromJson;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_AuthOrgStateErrorCopyWith<_$_AuthOrgStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

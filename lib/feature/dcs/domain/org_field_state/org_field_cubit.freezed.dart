// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'org_field_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrgFieldState _$OrgFieldStateFromJson(Map<String, dynamic> json) {
  return _OrgFieldState.fromJson(json);
}

/// @nodoc
mixin _$OrgFieldState {
//Некотрое состояние поля
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError; //Список полей
  List<FieldEntity> get orgFieldList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrgFieldStateCopyWith<OrgFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrgFieldStateCopyWith<$Res> {
  factory $OrgFieldStateCopyWith(
          OrgFieldState value, $Res Function(OrgFieldState) then) =
      _$OrgFieldStateCopyWithImpl<$Res, OrgFieldState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<FieldEntity> orgFieldList});
}

/// @nodoc
class _$OrgFieldStateCopyWithImpl<$Res, $Val extends OrgFieldState>
    implements $OrgFieldStateCopyWith<$Res> {
  _$OrgFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? orgFieldList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      orgFieldList: null == orgFieldList
          ? _value.orgFieldList
          : orgFieldList // ignore: cast_nullable_to_non_nullable
              as List<FieldEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrgFieldStateCopyWith<$Res>
    implements $OrgFieldStateCopyWith<$Res> {
  factory _$$_OrgFieldStateCopyWith(
          _$_OrgFieldState value, $Res Function(_$_OrgFieldState) then) =
      __$$_OrgFieldStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<FieldEntity> orgFieldList});
}

/// @nodoc
class __$$_OrgFieldStateCopyWithImpl<$Res>
    extends _$OrgFieldStateCopyWithImpl<$Res, _$_OrgFieldState>
    implements _$$_OrgFieldStateCopyWith<$Res> {
  __$$_OrgFieldStateCopyWithImpl(
      _$_OrgFieldState _value, $Res Function(_$_OrgFieldState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? orgFieldList = null,
  }) {
    return _then(_$_OrgFieldState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      orgFieldList: null == orgFieldList
          ? _value._orgFieldList
          : orgFieldList // ignore: cast_nullable_to_non_nullable
              as List<FieldEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrgFieldState implements _OrgFieldState {
  const _$_OrgFieldState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<FieldEntity> orgFieldList = const []})
      : _orgFieldList = orgFieldList;

  factory _$_OrgFieldState.fromJson(Map<String, dynamic> json) =>
      _$$_OrgFieldStateFromJson(json);

//Некотрое состояние поля
  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
//Список полей
  final List<FieldEntity> _orgFieldList;
//Список полей
  @override
  @JsonKey()
  List<FieldEntity> get orgFieldList {
    if (_orgFieldList is EqualUnmodifiableListView) return _orgFieldList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orgFieldList);
  }

  @override
  String toString() {
    return 'OrgFieldState(asyncSnapshot: $asyncSnapshot, orgFieldList: $orgFieldList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrgFieldState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._orgFieldList, _orgFieldList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_orgFieldList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrgFieldStateCopyWith<_$_OrgFieldState> get copyWith =>
      __$$_OrgFieldStateCopyWithImpl<_$_OrgFieldState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrgFieldStateToJson(
      this,
    );
  }
}

abstract class _OrgFieldState implements OrgFieldState {
  const factory _OrgFieldState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<FieldEntity> orgFieldList}) = _$_OrgFieldState;

  factory _OrgFieldState.fromJson(Map<String, dynamic> json) =
      _$_OrgFieldState.fromJson;

  @override //Некотрое состояние поля
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override //Список полей
  List<FieldEntity> get orgFieldList;
  @override
  @JsonKey(ignore: true)
  _$$_OrgFieldStateCopyWith<_$_OrgFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

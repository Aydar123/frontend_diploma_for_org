// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_field_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdditionalFieldState _$AdditionalFieldStateFromJson(Map<String, dynamic> json) {
  return _AdditionalFieldState.fromJson(json);
}

/// @nodoc
mixin _$AdditionalFieldState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<FieldEntity> get fieldList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalFieldStateCopyWith<AdditionalFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalFieldStateCopyWith<$Res> {
  factory $AdditionalFieldStateCopyWith(AdditionalFieldState value,
          $Res Function(AdditionalFieldState) then) =
      _$AdditionalFieldStateCopyWithImpl<$Res, AdditionalFieldState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<FieldEntity> fieldList});
}

/// @nodoc
class _$AdditionalFieldStateCopyWithImpl<$Res,
        $Val extends AdditionalFieldState>
    implements $AdditionalFieldStateCopyWith<$Res> {
  _$AdditionalFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? fieldList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      fieldList: null == fieldList
          ? _value.fieldList
          : fieldList // ignore: cast_nullable_to_non_nullable
              as List<FieldEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdditionalFieldStateCopyWith<$Res>
    implements $AdditionalFieldStateCopyWith<$Res> {
  factory _$$_AdditionalFieldStateCopyWith(_$_AdditionalFieldState value,
          $Res Function(_$_AdditionalFieldState) then) =
      __$$_AdditionalFieldStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<FieldEntity> fieldList});
}

/// @nodoc
class __$$_AdditionalFieldStateCopyWithImpl<$Res>
    extends _$AdditionalFieldStateCopyWithImpl<$Res, _$_AdditionalFieldState>
    implements _$$_AdditionalFieldStateCopyWith<$Res> {
  __$$_AdditionalFieldStateCopyWithImpl(_$_AdditionalFieldState _value,
      $Res Function(_$_AdditionalFieldState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? fieldList = null,
  }) {
    return _then(_$_AdditionalFieldState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      fieldList: null == fieldList
          ? _value._fieldList
          : fieldList // ignore: cast_nullable_to_non_nullable
              as List<FieldEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdditionalFieldState implements _AdditionalFieldState {
  const _$_AdditionalFieldState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<FieldEntity> fieldList = const []})
      : _fieldList = fieldList;

  factory _$_AdditionalFieldState.fromJson(Map<String, dynamic> json) =>
      _$$_AdditionalFieldStateFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<FieldEntity> _fieldList;
  @override
  @JsonKey()
  List<FieldEntity> get fieldList {
    if (_fieldList is EqualUnmodifiableListView) return _fieldList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fieldList);
  }

  @override
  String toString() {
    return 'AdditionalFieldState(asyncSnapshot: $asyncSnapshot, fieldList: $fieldList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdditionalFieldState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._fieldList, _fieldList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_fieldList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdditionalFieldStateCopyWith<_$_AdditionalFieldState> get copyWith =>
      __$$_AdditionalFieldStateCopyWithImpl<_$_AdditionalFieldState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdditionalFieldStateToJson(
      this,
    );
  }
}

abstract class _AdditionalFieldState implements AdditionalFieldState {
  const factory _AdditionalFieldState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<FieldEntity> fieldList}) = _$_AdditionalFieldState;

  factory _AdditionalFieldState.fromJson(Map<String, dynamic> json) =
      _$_AdditionalFieldState.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<FieldEntity> get fieldList;
  @override
  @JsonKey(ignore: true)
  _$$_AdditionalFieldStateCopyWith<_$_AdditionalFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

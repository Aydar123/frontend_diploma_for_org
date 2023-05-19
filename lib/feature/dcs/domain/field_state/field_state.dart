//Если подчеркивается part, то закоментировать или удалить import сверху
part of 'field_cubit.dart';

@freezed
class FieldState with _$FieldState {
  const factory FieldState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<FieldEntity> fieldList,
  }) = _FieldState;

  factory FieldState.fromJson(Map<String, dynamic> json) =>
      _$FieldStateFromJson(json);
}

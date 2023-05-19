//Если подчеркивается part, то закоментировать или удалить import сверху
part of 'additional_field_cubit.dart';

@freezed
class AdditionalFieldState with _$AdditionalFieldState {
  const factory AdditionalFieldState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<FieldEntity> fieldList,
  }) = _AdditionalFieldState;

  factory AdditionalFieldState.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFieldStateFromJson(json);
}

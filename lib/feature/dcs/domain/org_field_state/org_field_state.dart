part of 'org_field_cubit.dart';

@freezed
class OrgFieldState with _$OrgFieldState {
  const factory OrgFieldState({
    //Некотрое состояние поля
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    //Список полей
    @Default([]) List<FieldEntity> orgFieldList,
  }) = _OrgFieldState;

  factory OrgFieldState.fromJson(Map<String, dynamic> json) =>
      _$OrgFieldStateFromJson(json);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_field_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgFieldState _$$_OrgFieldStateFromJson(Map<String, dynamic> json) =>
    _$_OrgFieldState(
      orgFieldList: (json['orgFieldList'] as List<dynamic>?)
              ?.map((e) => FieldEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OrgFieldStateToJson(_$_OrgFieldState instance) =>
    <String, dynamic>{
      'orgFieldList': instance.orgFieldList,
    };

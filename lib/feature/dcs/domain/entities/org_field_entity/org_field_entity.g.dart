// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_field_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgFieldEntity _$$_OrgFieldEntityFromJson(Map<String, dynamic> json) =>
    _$_OrgFieldEntity(
      id: json['id'] as int,
      orgId: json['orgId'] == null
          ? null
          : OrgEntity.fromJson(json['orgId'] as Map<String, dynamic>),
      fieldId: json['fieldId'] == null
          ? null
          : FieldEntity.fromJson(json['fieldId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrgFieldEntityToJson(_$_OrgFieldEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orgId': instance.orgId,
      'fieldId': instance.fieldId,
    };

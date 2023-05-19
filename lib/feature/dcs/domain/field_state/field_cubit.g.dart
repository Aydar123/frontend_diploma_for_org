// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FieldState _$$_FieldStateFromJson(Map<String, dynamic> json) =>
    _$_FieldState(
      fieldList: (json['fieldList'] as List<dynamic>?)
              ?.map((e) => FieldEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_FieldStateToJson(_$_FieldState instance) =>
    <String, dynamic>{
      'fieldList': instance.fieldList,
    };

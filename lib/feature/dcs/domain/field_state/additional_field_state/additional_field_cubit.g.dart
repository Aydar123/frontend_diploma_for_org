// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_field_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdditionalFieldState _$$_AdditionalFieldStateFromJson(
        Map<String, dynamic> json) =>
    _$_AdditionalFieldState(
      fieldList: (json['fieldList'] as List<dynamic>?)
              ?.map((e) => FieldEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AdditionalFieldStateToJson(
        _$_AdditionalFieldState instance) =>
    <String, dynamic>{
      'fieldList': instance.fieldList,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_org_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthOrgStateNotAuthorized _$$_AuthOrgStateNotAuthorizedFromJson(
        Map<String, dynamic> json) =>
    _$_AuthOrgStateNotAuthorized(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthOrgStateNotAuthorizedToJson(
        _$_AuthOrgStateNotAuthorized instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_AuthOrgStateAuthorized _$$_AuthOrgStateAuthorizedFromJson(
        Map<String, dynamic> json) =>
    _$_AuthOrgStateAuthorized(
      OrgEntity.fromJson(json['orgEntity'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthOrgStateAuthorizedToJson(
        _$_AuthOrgStateAuthorized instance) =>
    <String, dynamic>{
      'orgEntity': instance.orgEntity,
      'runtimeType': instance.$type,
    };

_$_AuthOrgStateWaiting _$$_AuthOrgStateWaitingFromJson(
        Map<String, dynamic> json) =>
    _$_AuthOrgStateWaiting(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthOrgStateWaitingToJson(
        _$_AuthOrgStateWaiting instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_AuthOrgStateError _$$_AuthOrgStateErrorFromJson(Map<String, dynamic> json) =>
    _$_AuthOrgStateError(
      json['error'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthOrgStateErrorToJson(
        _$_AuthOrgStateError instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };

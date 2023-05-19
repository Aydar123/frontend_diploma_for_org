import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'org_field_entity.freezed.dart';

part 'org_field_entity.g.dart';

@freezed
class OrgFieldEntity with _$OrgFieldEntity {

  const factory OrgFieldEntity({
    required int id,
    required OrgEntity? orgId,
    required FieldEntity? fieldId,
  }) = _OrgFieldEntity;

  factory OrgFieldEntity.fromJson(Map<String, dynamic> json) =>
      _$OrgFieldEntityFromJson(json);
}

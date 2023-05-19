part of 'auth_org_cubit.dart';

@freezed
class AuthOrgState with _$AuthOrgState {
  factory AuthOrgState.notAuthorized() = _AuthOrgStateNotAuthorized;
  factory AuthOrgState.authorized(OrgEntity orgEntity) = _AuthOrgStateAuthorized;
  factory AuthOrgState.waiting() = _AuthOrgStateWaiting;
  factory AuthOrgState.error(dynamic error) = _AuthOrgStateError;

  factory AuthOrgState.fromJson(Map<String, dynamic> json) =>
      _$AuthOrgStateFromJson(json);

}



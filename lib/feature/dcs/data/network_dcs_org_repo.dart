import 'package:dcs_43_org_frontend/app/domain/app_org_api.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_repo.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'dto/org_dto.dart';

@Injectable(as: AuthOrgRepo)
class NetworkDcsOrgRepo extends AuthOrgRepo {
  final AppOrgApi api;

  NetworkDcsOrgRepo(this.api);

  @override
  Future<OrgEntity> getProfile() async {
    try {
      final response = await api.getProfile();
      return OrgDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<OrgEntity> refreshToken({String? refreshToken}) async {
    try {
      final response = await api.refreshToken(refreshToken: refreshToken);
      return OrgDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<OrgEntity> signIn(
      {required String email, required String password}) async {
    try {
      //Когда сделаю NginX - убрать :7100 и оставить просто /clientAuth
      final response = await api.signIn(
        email: email,
        password: password,
      );
      return OrgDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> updatePassword(
      {required String oldPassword, required String newPassword}) async {
    try {
      final Response response = await api.updatePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
      );
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<OrgEntity> updateProfile({
    String? name,
    String? fullName,
    String? email,
    String? city,
    String? address,
    String? inn,
    String? kpp,
    String? ogrn,
  }) async {
    try {
      final response = await api.updateProfile(
        name: name,
        fullName: fullName,
        email: email,
        city: city,
        address: address,
        inn: inn,
        kpp: kpp,
        ogrn: ogrn,
      );
      return OrgDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Iterable> fetchFields() async {
    try{
      final response = await api.fetchFields();
      return response.data;
    }catch (_) {
      rethrow;
    }
  }

  @override
  Future<Iterable> fetchAdditionalFields() async {
    try{
      final response = await api.fetchAdditionalFields();
      return response.data;
    }catch (_) {
      rethrow;
    }
  }

  @override
  Future<Iterable> fetchOrgFields() async {
    try{
      final response = await api.fetchOrgFields();
      return response.data;
    }catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> addFieldInOrgFields(String id) async {
    try{
      final response = await api.addFieldInOrgFields(id);
      return response.data["message"];
    }catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> addField(String name) async {
    try{
      final response = await api.addField(name);
      return response.data["message"];
    }catch (_) {
      rethrow;
    }
  }


}

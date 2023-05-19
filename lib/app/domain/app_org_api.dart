import 'package:dio/dio.dart';

abstract class AppOrgApi {

  Future<dynamic> signIn({
    required String email,
    required String password
  });

  Future<dynamic> getProfile();

  Future<dynamic> updateProfile({
    String? name,
    String? fullName,
    String? email,
    String? city,
    String? address,
    String? inn,
    String? kpp,
    String? ogrn,
  });

  Future<dynamic> updatePassword({
    required String oldPassword,
    required String newPassword
  });

  Future<dynamic> refreshToken({
    String? refreshToken
  });

  Future<dynamic> request(String path);

  Future<dynamic> fetch(RequestOptions requestOptions);

  //null created org [fields table]
  Future<dynamic> fetchFields();

  Future<dynamic> fetchAdditionalFields();

  Future<dynamic> fetchOrgFields();

  Future<dynamic> addFieldInOrgFields(String id);

  Future<dynamic> addField(String name);





}
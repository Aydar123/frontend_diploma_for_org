import 'package:dcs_43_org_frontend/app/data/auth_org_interceptor.dart';
import 'package:dcs_43_org_frontend/app/domain/app_config.dart';
import 'package:dcs_43_org_frontend/app/domain/app_org_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@Singleton(as: AppOrgApi)
class DioAppOrgApi implements AppOrgApi {

  late final Dio dio;
  //Для обновления токенов
  late final Dio dioTokens;

  //Создали Dio контейнер, который будет конфигурировать с HTTP
  DioAppOrgApi(AppConfig appConfig) {
    final options =
    BaseOptions(baseUrl: appConfig.baseUrl, connectTimeout: 15000);
    dio = Dio(options);
    dioTokens = Dio(options);

    //Удобно для дэбага, показывает в консоли результат запроса
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
      dioTokens.interceptors.add(PrettyDioLogger());
    }

    //Вызов метода addInterceptor!!!!!!!!!
    dio.interceptors.add(AuthOrgInterceptor());
  }

  @override
  Future<Response> getProfile() {
    try {
      return dio.get(":7100/orgProfile");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> refreshToken({String? refreshToken}) {
    try {
      return dioTokens.post(":7100/orgAuth/$refreshToken");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signIn({required String email, required String password}) {
    try {
      //Когда сделаю NginX - убрать :7100 и оставить просто /clientAuth
      return dio.post(":7100/orgAuth",
          data: {"email": email, "password": password});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> updatePassword(
      {required String oldPassword, required String newPassword}) {
    return dio.put(":7100/orgProfile", queryParameters: {
      "oldPassword": oldPassword,
      "newPassword": newPassword,
    });
  }

  @override
  Future<Response> updateProfile({
    String? email,
    String? name,
    String? fullName,
    String? city,
    String? address,
    String? inn,
    String? kpp,
    String? ogrn,
  }) {
    return dio.post(":7100/orgProfile", data: {
      "email": email,
      "name": name,
      "fullName": fullName,
      "city": city,
      "address": address,
      "inn": inn,
      "kpp": kpp,
      "ogrn": ogrn,
    });
  }

  @override
  Future fetch(RequestOptions requestOptions) {
    return dioTokens.fetch(requestOptions);
  }

  @override
  Future request(String path) {
    try {
      return dio.request(path);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future fetchFields() {
    return dio.get(":7100/fieldSelection");
  }

  @override
  Future fetchAdditionalFields() {
    return dio.get(":7100/additionalFieldSelection");
  }

  @override
  Future fetchOrgFields() {
    return dio.get(":7100/allOrgField");
  }

  @override
  Future addFieldInOrgFields(String id) {
    return dio.post(":7100/fieldSelection/$id");
  }

  @override
  Future addField(String name) {
    return dio.post(":7100/additionalFieldSelection", data: {
      "name": name
    });
  }


}

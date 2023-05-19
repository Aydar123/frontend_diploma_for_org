import 'package:dcs_43_org_frontend/app/di/init_di.dart';
import 'package:dcs_43_org_frontend/app/domain/app_org_api.dart';
import 'package:dcs_43_org_frontend/feature/dcs/domain/auth_org_state/auth_org_cubit.dart';
import 'package:dio/dio.dart';

class AuthOrgInterceptor extends QueuedInterceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    //1. Получить accessToken из header
    final accessToken = locator.get<AuthOrgCubit>().state.whenOrNull(
        authorized: (orgEntity) => orgEntity.accessToken
    );
    if (accessToken == null){
      super.onRequest(options, handler);
    } else {
      final headers = options.headers;
      headers["Authorization"] = "Bearer $accessToken";
      super.onRequest(options.copyWith(headers: headers), handler);
    }

  }

  //2. Обновить токен
  // Перехватить все ошибки
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        //Обновляем токены
        await locator.get<AuthOrgCubit>().refreshToken().then((token) async {
          if (token == null) {
            //Выбрасываем ошибку, если token = null
            super.onError(err, handler);
          } else {
            //Формируем новый accessToken
            err.requestOptions.headers["Authorization"] = "Bearer $token";
            //Отправляем запрос на backend
            final response = await locator.get<AppOrgApi>().fetch(err.requestOptions);
            //Выход из перехватчика запросов
            return handler.resolve(response);
          }
        });
      } on DioError catch (error){
        super.onError(error, handler);
      }
    } else {
      super.onError(err, handler);
    }

  }

}
import 'package:dcs_43_org_frontend/app/di/init_di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

//Получить di-контейнер
final locator = GetIt.instance;

@InjectableInit()
void initDi(String env){
  $initGetIt(locator, environment: env);
}
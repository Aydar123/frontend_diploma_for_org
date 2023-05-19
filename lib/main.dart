import 'package:dcs_43_org_frontend/app/ui/main_app_builder.dart';
import 'package:dcs_43_org_frontend/app/ui/main_app_runner.dart';
import 'package:flutter/material.dart';

void main() {
  //Инициализация связок
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment("env", defaultValue: "prod");
  final runner = MainAppRunner(env);
  final builder = MainAppBuilder();
  runner.run(builder);

}



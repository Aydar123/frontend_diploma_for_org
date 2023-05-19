import 'package:dcs_43_org_frontend/app/di/init_di.dart';
import 'package:dcs_43_org_frontend/app/domain/app_builder.dart';
import 'package:dcs_43_org_frontend/app/domain/app_runner.dart';
import 'package:flutter/cupertino.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

class MainAppRunner implements AppRunner {
  final String env;

  MainAppRunner(this.env);

  @override
  Future<void> preloadData() async {
    //init app
    //init Di
    initDi(env);
    //init config
  }

  @override
  Future<void> run(AppBuilder appBuilder) async {
    final storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory()
    );

    HydratedBlocOverrides.runZoned(
          () async {
        await preloadData();
        runApp(appBuilder.buildApp());
      },
      storage: storage,
    );
  }
}
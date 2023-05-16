import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:maharat/core/apis/api_service.dart';
import 'package:maharat/core/routes/app_route.dart';
import 'package:maharat/core/utils/database_utils.dart';

import 'injectable.config.dart';

final getIt = GetIt.instance;

@prod
@test
@InjectableInit()
void configureInjectable(String environment) {
  getIt.registerSingleton(AppRoutes());
  getIt.registerSingleton(AppDatabase.instance);
  getIt.registerSingleton(ApiService.instance);
  getIt.init(environment: environment);
}

abstract class Env {
  static const prod = 'prod';
  static const test = 'test';
}

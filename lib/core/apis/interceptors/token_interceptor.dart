import 'package:dio/dio.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/utils/database_utils.dart';

class TokenInterceptor extends Interceptor {
  var appDatabase = getIt<AppDatabase>();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var jwt = await appDatabase.getJwt();
    if (jwt != null) {
      options.headers["Authorization"] = "Bearer $jwt)";
    }
    super.onRequest(options, handler);
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

class ApiService {
  ApiService._();
  static final ApiService _apiService = ApiService._();
  static ApiService get instance => _apiService;

  RestClientApi restClient() => RestClientApi(_buildDioClient("BASE URL"));

  Dio _buildDioClient(String baseUrl) {
    final dio = Dio()..options = BaseOptions(baseUrl: baseUrl, headers: {});

    dio.interceptors.addAll([
      if (kDebugMode) LogInterceptor(logPrint: logEvent, requestBody: true, responseBody: true),
    ]);
    return dio;
  }
}

@RestApi()
abstract class RestClientApi {
  factory RestClientApi(Dio dio, {String baseUrl}) = _RestClientApi;
}

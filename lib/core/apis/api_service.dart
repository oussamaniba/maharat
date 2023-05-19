import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:maharat/core/apis/endpoints.dart';
import 'package:maharat/core/utils/global_functions.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsResponse.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

class ApiService {
  ApiService._();
  static final ApiService _apiService = ApiService._();
  static ApiService get instance => _apiService;

  RestClientApi get restClient => RestClientApi(_buildDioClient("https://backend.maharttafl.net/api/v2/"));

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

  @GET(ApiServicePaths.categories)
  Future<HttpResponse<ProgramsResponse>> getAllCategories(
    @Query("type") String type,
  );

  @GET(ApiServicePaths.sections)
  Future<HttpResponse<SectionsResponse>> getAllSesctions();

  @GET(ApiServicePaths.sectionsItemDetail)
  Future<HttpResponse<SectionsResponse>> getSesctionItemById(
    @Path("id") String id,
  );
}

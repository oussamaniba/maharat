import 'package:injectable/injectable.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsResponse.dart';
import 'package:retrofit/retrofit.dart';

@factoryMethod
abstract class ProgramsRemoteDataSource {
  Future<HttpResponse<ProgramsResponse>> getAllCategories(String type);
}

import 'package:injectable/injectable.dart';
import 'package:maharat/core/apis/api_service.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/features/_commons/data/remote/ProgramsRemoteDataSource.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsResponse.dart';
import 'package:retrofit/retrofit.dart';

@Injectable(as: ProgramsRemoteDataSource)
class ProgramsRemoteDataSourceImpl extends ProgramsRemoteDataSource {
  var remote = getIt<ApiService>().restClient;

  @override
  Future<HttpResponse<ProgramsResponse>> getAllCategories(String type) async {
    return await remote.getAllCategories(type);
  }
}

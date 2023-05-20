import 'package:injectable/injectable.dart';
import 'package:maharat/core/apis/api_service.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/features/_commons/data/remote/ProgramsRemoteDataSource.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_types_response/SectionsTestTypesResponse.dart';
import 'package:retrofit/retrofit.dart';

@Injectable(as: ProgramsRemoteDataSource)
class ProgramsRemoteDataSourceImpl extends ProgramsRemoteDataSource {
  var remote = getIt<ApiService>().restClient;

  @override
  Future<HttpResponse<ProgramsResponse>> getAllCategories(String type) async {
    return await remote.getAllCategories(type);
  }

  @override
  Future<HttpResponse<SectionsResponse>> getAllSectionCategories() async {
    return await remote.getAllSections();
  }

  @override
  Future<HttpResponse<SectionsResponse>> getAllSectionItemsById(
      String id) async {
    return await remote.getSectionItemById(id);
  }

  @override
  Future<HttpResponse<SectionsTestResponse>> getAllSectionTest(
    String sectionId,
    String sectionType,
    String sectionItemId,
  ) async {
    return await remote.getSectionItemTest(sectionId, sectionType, sectionItemId);
  }

  @override
  Future<HttpResponse<SectionsTestTypesResponse>> getAllSectionTestTypes(
      String sectionId
      ) async {
    return await remote.getSectionTestTypes(sectionId);
  }
}

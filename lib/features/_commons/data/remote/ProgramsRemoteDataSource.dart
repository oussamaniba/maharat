import 'package:injectable/injectable.dart';
import 'package:maharat/features/_commons/data/remote/response/ProgramsResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/SectionsResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_types_response/SectionsTestTypesResponse.dart';
import 'package:retrofit/retrofit.dart';

@factoryMethod
abstract class ProgramsRemoteDataSource {
  Future<HttpResponse<ProgramsResponse>> getAllCategories(String type);
  Future<HttpResponse<SectionsResponse>> getAllSectionCategories();
  Future<HttpResponse<SectionsResponse>> getAllSectionItemsById(String id);
  Future<HttpResponse<SectionsTestResponse>> getAllSectionTest(
    String sectionId,
    String sectionType,
    String sectionItemId,
  );

  Future<HttpResponse<SectionsTestTypesResponse>> getAllSectionTestTypes(
    String sectionId,
  );
}

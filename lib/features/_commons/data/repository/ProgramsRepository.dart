import 'package:injectable/injectable.dart';
import 'package:maharat/core/apis/exceptions/exception_message_handler.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_types_response/SectionsTestTypesResponse.dart';
import 'package:maharat/features/details/sections/models/Sections.dart';
import 'package:maharat/features/home/models/Groups.dart';
import 'package:multiple_result/multiple_result.dart';

@factoryMethod
abstract class ProgramsRepository {
  Future<Result<Groups, ExceptionMessageHandler>> getCategories(String type);
  Future<Result<Sections, ExceptionMessageHandler>> getSections();
  Future<Result<Sections, ExceptionMessageHandler>> getSectionItemById(
      String id);
  Future<Result<SectionsTestResponse, ExceptionMessageHandler>> getSectionTest(
    String sectionId,
    String sectionType,
    String sectionItemId,
  );
  Future<Result<SectionsTestTypesResponse, ExceptionMessageHandler>>
      getSectionTestTypes(
    String sectionId,
  );
}

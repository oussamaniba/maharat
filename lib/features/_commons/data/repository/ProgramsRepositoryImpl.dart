import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:maharat/core/apis/exceptions/exception_message_handler.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/features/_commons/data/remote/ProgramsRemoteDataSource.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_response/SectionsTestResponse.dart';
import 'package:maharat/features/_commons/data/remote/response/sections_test_types_response/SectionsTestTypesResponse.dart';
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart';
import 'package:maharat/features/details/sections/models/Sections.dart';
import 'package:maharat/features/home/models/Groups.dart';
import 'package:multiple_result/multiple_result.dart';

@Injectable(as: ProgramsRepository)
class ProgramsRepositoryImpl extends ProgramsRepository {
  var source = getIt<ProgramsRemoteDataSource>();
  @override
  Future<Result<Groups, ExceptionMessageHandler>> getCategories(
      String type) async {
    try {
      var result = await source.getAllCategories(type);
      return Success(Groups.fromJson(result.data.toJson()));
    } on DioError {
      return Error(ExceptionMessageHandler('An Error has occured'));
    } on Exception {
      return Error(ExceptionMessageHandler('An Error has occured'));
    }
  }

  @override
  Future<Result<Sections, ExceptionMessageHandler>> getSections() async {
    try {
      var result = await source.getAllSectionCategories();
      return Success(Sections.fromJson(result.data.toJson()));
    } on DioError {
      return Error(ExceptionMessageHandler('An Error has occured'));
    } on Exception {
      return Error(ExceptionMessageHandler('An Error has occured'));
    }
  }

  @override
  Future<Result<Sections, ExceptionMessageHandler>> getSectionItemById(
      String id) async {
    try {
      var result = await source.getAllSectionItemsById(id);
      return Success(Sections.fromJson(result.data.toJson()));
    } on DioError {
      return Error(ExceptionMessageHandler('An Error has occured'));
    } on Exception {
      return Error(ExceptionMessageHandler('An Error has occured'));
    }
  }

  @override
  Future<Result<SectionsTestResponse, ExceptionMessageHandler>> getSectionTest(
    String sectionId,
    String sectionType,
    String sectionItemId
  ) async {
    try {
      var result = await source.getAllSectionTest(sectionId, sectionType, sectionItemId);
      return Success(result.data);
    } on DioError {
      return Error(ExceptionMessageHandler('An Error has occured'));
    } on Exception {
      return Error(ExceptionMessageHandler('An Error has occured'));
    }
  }

  @override
  Future<Result<SectionsTestTypesResponse, ExceptionMessageHandler>>
      getSectionTestTypes(String sectionId) async {
    try {
      var result = await source.getAllSectionTestTypes(sectionId);
      return Success(result.data);
    } on DioError {
      return Error(ExceptionMessageHandler('An Error has occured'));
    } on Exception {
      return Error(ExceptionMessageHandler('An Error has occured'));
    }
  }
}

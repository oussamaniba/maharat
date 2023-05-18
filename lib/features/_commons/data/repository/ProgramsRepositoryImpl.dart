import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:maharat/core/apis/exceptions/exception_message_handler.dart';
import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/features/_commons/data/remote/ProgramsRemoteDataSource.dart';
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart';
import 'package:maharat/features/home/models/Groups.dart';
import 'package:multiple_result/multiple_result.dart';

@Injectable(as: ProgramsRepository)
class ProgramsRepositoryImpl extends ProgramsRepository {
  var source = getIt<ProgramsRemoteDataSource>();
  @override
  Future<Result<Groups, ExceptionMessageHandler>> getCategories(String type) async {
    try {
      var result = await source.getAllCategories(type);
      return Success(Groups.fromJson(result.data.toJson()));
    } on DioError {
      return Error(ExceptionMessageHandler('Une erreur est survenue lors de la déconnexion'));
    } on Exception {
      return Error(ExceptionMessageHandler('Une erreur est survenue veuillez reessayer'));
    }
  }
}

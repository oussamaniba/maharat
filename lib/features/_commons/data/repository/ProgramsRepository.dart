import 'package:injectable/injectable.dart';
import 'package:maharat/core/apis/exceptions/exception_message_handler.dart';
import 'package:maharat/features/home/models/Groups.dart';
import 'package:multiple_result/multiple_result.dart';

@factoryMethod
abstract class ProgramsRepository {
  Future<Result<Groups, ExceptionMessageHandler>> getCategories(String type);
}

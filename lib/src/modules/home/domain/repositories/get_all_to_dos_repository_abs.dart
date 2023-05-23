import 'package:test_eclipseworks/main.dart';

abstract class IGetAllToDosRepository {
  Future<Result<GetAllToDosError, List<TodoEntity>>> call();
}
import 'package:test_eclipseworks/main.dart';

abstract class IGetAllToDosDataLocal {
  Future<List<TodoEntity>> call();
}
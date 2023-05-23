import 'package:test_eclipseworks/main.dart';

abstract class ISaveToDosDataLocal {
  Future<void> call(List<TodoEntity> newToDos);
}
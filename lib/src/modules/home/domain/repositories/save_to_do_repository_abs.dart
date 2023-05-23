import 'package:test_eclipseworks/main.dart';

abstract class ISaveToDoRepository {
  Future<Result<SaveToDoError, bool>> call(List<TodoEntity> newToDo);
}

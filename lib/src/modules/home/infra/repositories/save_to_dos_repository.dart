


import 'package:test_eclipseworks/main.dart';

class SaveToDosRepository implements ISaveToDoRepository {
  final ISaveToDosDataLocal _data;
  
  SaveToDosRepository({
    required ISaveToDosDataLocal data,
  }) : _data = data;

  @override
  Future<Result<SaveToDoError, bool>> call(List<TodoEntity> newToDo) async {
   try {
      await _data(newToDo);

      return const Result.success(true);
    } catch (e) {
      return Result.failure(
        SaveToDoError(
          e.toString(),
        ),
      );
    }
  }
  
}
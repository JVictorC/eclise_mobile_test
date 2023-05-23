import 'package:test_eclipseworks/main.dart';

abstract class ISaveToDoUsecase {
  Future<Result<SaveToDoError, bool>> call(List<TodoEntity> newToDo);
}

class SaveToDoUsecase implements ISaveToDoUsecase {
  final ISaveToDoRepository _repository;

  SaveToDoUsecase({
    required ISaveToDoRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<SaveToDoError, bool>> call(List<TodoEntity> newToDo) => _repository(newToDo);
}

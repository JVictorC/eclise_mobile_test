import 'package:test_eclipseworks/main.dart';

abstract class IGetAllToDosUseCase {
  Future<Result<GetAllToDosError, List<TodoEntity>>> call();
}

class GetAllToDosUseCase implements IGetAllToDosUseCase {
  final IGetAllToDosRepository _repository;

  GetAllToDosUseCase({
    required IGetAllToDosRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<GetAllToDosError, List<TodoEntity>>> call() => _repository();
}

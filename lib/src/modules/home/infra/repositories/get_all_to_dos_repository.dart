import 'package:test_eclipseworks/main.dart';

class GetAllToDosRepository implements IGetAllToDosRepository {
  final IGetAllToDosDataLocal _data;

  GetAllToDosRepository({
    required IGetAllToDosDataLocal data,
  }) : _data = data;

  @override
  Future<Result<GetAllToDosError, List<TodoEntity>>> call() async {
    try {
      final allToDos = await _data();

      return Result.success(allToDos);
    } catch (e) {
      return Result.failure(
        GetAllToDosError(
          e.toString(),
        ),
      );
    }
  }
}

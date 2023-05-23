import 'package:test_eclipseworks/main.dart';
import 'package:test_eclipseworks/src/modules/home/infra/models/todo_model.dart';

class GetAllToDosDataLocal implements IGetAllToDosDataLocal {
  final ISharedPreference _client;

  GetAllToDosDataLocal(this._client);

  @override
  Future<List<TodoEntity>> call() async {
    final jsonTodos = await _client.getMap(ToDoConstants.toDoHistoryKey);

    if (jsonTodos.isEmpty) {
      jsonTodos["data"] = [];
    }

    List toDos = jsonTodos["data"];

    return toDos
        .map(
          (e) => ToDoModel.fromJson(e),
        )
        .toList();
  }
}

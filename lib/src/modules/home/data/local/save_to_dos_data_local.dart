import 'package:test_eclipseworks/main.dart';

class SaveToDosDataLocal implements ISaveToDosDataLocal {
  final ISharedPreference _client;

  SaveToDosDataLocal(this._client);

  @override
  Future<void> call(List<TodoEntity> newToDos) async {
    await _client.saveMap(
      ToDoConstants.toDoHistoryKey,
      {
        "data": newToDos,
      },
    );
  }
}

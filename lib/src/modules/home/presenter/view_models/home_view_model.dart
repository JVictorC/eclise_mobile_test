import 'package:flutter/material.dart';
import 'package:test_eclipseworks/main.dart';

class HomeViewModel with ChangeNotifier {
  List<TodoEntity> toDos = [];
  List<TodoEntity> _backupToDos = [];
  TypeFilterEntity typeFilter = TypeFilterEntity.all;

  HomeViewModel({
    required this.getAllTodosUsecase,
    required this.saveToDoUsecase,
  });

  final IGetAllToDosUseCase getAllTodosUsecase;
  final ISaveToDoUsecase saveToDoUsecase;

  Future<void> getAllToDos() async {
    final result = await getAllTodosUsecase();

    if (result.isSuccess) {
      toDos = result.value!;

      _backupToDos = toDos.toList();
    }

    notifyListeners();
  }

  void filterList(TypeFilterEntity typeFilter) {
    if (typeFilter == this.typeFilter) {
      return;
    }

    this.typeFilter = typeFilter;

    if (typeFilter == TypeFilterEntity.done) {
      toDos = _backupToDos.where((e) => e.isCompleted).toList();
    } else if (typeFilter == TypeFilterEntity.pending) {
      toDos = _backupToDos.where((e) => !e.isCompleted).toList();
    } else {
      toDos = _backupToDos;
    }

    notifyListeners();
  }

  Future<void> saveToDo(TodoEntity newToDo) async {
    toDos.add(newToDo);
    _backupToDos = toDos.toList();

    await saveToDoUsecase(toDos);

    notifyListeners();
  }

  Future<void> changeStatusToDos(String idToDo) async {
    final toDo = toDos.where((element) => element.id == idToDo).first;
    
    toDo.isCompleted =  !toDo.isCompleted;

    _backupToDos = toDos.toList();

    await saveToDoUsecase(toDos);

    notifyListeners();
  }
}

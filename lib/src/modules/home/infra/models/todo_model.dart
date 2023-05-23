import 'dart:convert';

import 'package:test_eclipseworks/main.dart';
import 'package:uuid/uuid.dart';

class ToDoModel extends TodoEntity {
  ToDoModel({
    required String toDo,
    bool? isCompleted,
    String? id,
  }) : super(
          toDo,
          isCompleted ?? false,
          id ?? const Uuid().v1(),
        );

  ToDoModel copyWith({
    String? toDo,
    bool? isCompleted,
  }) {
    return ToDoModel(
      id: id,
      toDo: toDo ?? this.toDo,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'toDo': toDo,
      'isCompleted': isCompleted,
    };
  }

  factory ToDoModel.fromMap(Map<String, dynamic> map) {
    return ToDoModel(
      id: map['id'],
      toDo: map['toDo'],
      isCompleted: map['isCompleted'] ,
    );
  }

  factory ToDoModel.fromJson(String json) {
    return ToDoModel.fromMap(
      jsonDecode(json),
    );
  }

  String toJson() => json.encode(toMap());
}

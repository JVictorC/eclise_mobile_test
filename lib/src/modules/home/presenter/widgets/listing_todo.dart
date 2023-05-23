import 'package:flutter/material.dart';
import 'package:test_eclipseworks/main.dart';

class ListingTodo extends StatelessWidget {
  const ListingTodo({
    super.key,
    required this.toDos,
    required this.onChanged,
  });

  final List<TodoEntity> toDos;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemCount: toDos.length,
          itemBuilder: (context, index) {
            return ToDoWidget(
              onChanged: (_) => onChanged(toDos[index].id),
              toDo: toDos[index],
            );
          },
        ),
      ),
    );
  }
}

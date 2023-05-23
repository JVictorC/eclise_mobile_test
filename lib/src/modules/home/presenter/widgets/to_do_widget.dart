import 'package:flutter/material.dart';
import 'package:test_eclipseworks/main.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    super.key,
    required this.toDo,
    required this.onChanged,
  });

  final TodoEntity toDo;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: toDo.isCompleted,
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(
            toDo.toDo,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.black),
          ),
        )
      ],
    );
  }
}

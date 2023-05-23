import 'package:flutter/material.dart';
import 'package:test_eclipseworks/main.dart';
import 'package:test_eclipseworks/src/modules/home/infra/models/todo_model.dart';

class ModalSheetWidget extends StatefulWidget {
  const ModalSheetWidget({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<ModalSheetWidget> createState() => _ModalSheetWidgetState();
}

class _ModalSheetWidgetState extends State<ModalSheetWidget> {
  final TextEditingController _toDoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: _toDoController,
            decoration: const InputDecoration(label: Text("A Fazer")),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).pop();

              await widget.viewModel.saveToDo(
                ToDoModel(toDo: _toDoController.text),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text("Adicionar"),
            ),
          ),
        ],
      ),
    );
  }
}

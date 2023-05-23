import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_eclipseworks/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeViewModel _viewModel;

  _startPage() async {
    _viewModel = context.read<HomeViewModel>();

    await _viewModel.getAllToDos();
  }

  @override
  void initState() {
    super.initState();
    _startPage();
  }

  @override
  Widget build(BuildContext context) {
    return StructureBase(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => ModalSheetWidget(viewModel: _viewModel),
          );
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(
          Icons.add,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      appBar: AppBar(
        title: const Text("To do list"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Consumer<HomeViewModel>(builder: (context, value, child) {
          return Column(
            children: [
              HeaderHome(
                viewModel: _viewModel,
              ),
              ListingTodo(
                toDos: _viewModel.toDos,
                onChanged: (id) => _viewModel.changeStatusToDos(id),
              ),
            ],
          );
        }),
      ),
    );
  }
}

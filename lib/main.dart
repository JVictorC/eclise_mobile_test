export 'src/core/core.dart';
export 'src/modules/modules.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/core/core.dart';
import 'src/modules/modules.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initAllDependencies();

  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeViewModel(
        getAllTodosUsecase: I.get<IGetAllToDosUseCase>(),
        saveToDoUsecase: I.get<ISaveToDoUsecase>(),
      ),
      child: MaterialApp(
        title: 'ToDo List',
        theme: toDoEclipseTheme,
        initialRoute: TodoEclipseRoutes.homePage,
        routes: todoEclipseRoutes,
      ),
    ),
  );
}

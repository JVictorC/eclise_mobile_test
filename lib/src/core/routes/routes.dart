

import 'package:flutter/material.dart';
import 'package:test_eclipseworks/main.dart';

class TodoEclipseRoutes {
  static const homePage = "HomePage";
  static const newTodo = "NewTodoPage";
}


final todoEclipseRoutes = {
  TodoEclipseRoutes.homePage: (context) => const HomePage(),
  TodoEclipseRoutes.newTodo: (context) => const SizedBox(),
};

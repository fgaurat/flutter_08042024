import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_http_todos/screens/todo_form/todo_form.dart';
import 'package:tp_http_todos/screens/todo_list/todo_list.dart';


void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: TodoList.route,
      builder: (BuildContext context, GoRouterState state) {
        return const TodoList();
      },
    ),
    GoRoute(
      path: TodoForm.route,
      builder: (BuildContext context, GoRouterState state) {
        return const TodoForm();
      },
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(routerConfig: _router,);
  }
}

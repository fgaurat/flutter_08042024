import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tp_hive_todos/models/todo.dart';
import 'package:tp_hive_todos/screens/todo_list_screen.dart';
import 'package:tp_hive_todos/todo_box.dart';




void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  todoBox = await Hive.openBox<Todo>('todoBox');

  // todoBox.put('key_1',Todo(title: "Faire du Flutter", completed: true));
  // todoBox.put('key_2',Todo(title: "Se mettre en grève", completed: false));
  // todoBox.put('key_3',Todo(title: "Faire du sport", completed: false));
  // todoBox.put('key_4',Todo(title: "Manger 5 fruits et légumes", completed: true));
  // todoBox.put('key_4',Todo(title: "Se remettre en grève", completed: true));

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TodoListScreen(),
      ),
    );
  }
}

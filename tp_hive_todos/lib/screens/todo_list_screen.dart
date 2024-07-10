import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tp_hive_todos/models/todo.dart';
import 'package:tp_hive_todos/todo_box.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive TodoList'),
      ),
      body: ListView.builder(
        itemCount: todoBox.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(todoBox.getAt(index).title),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_http_todos/models/todo.dart';

import 'package:tp_http_todos/screens/todo_form/todo_form.dart';
import 'package:tp_http_todos/services/todo_service.dart';

class TodoList extends StatefulWidget {
  static const String route = "/";

  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(TodoForm.route).then((value){
            setState(() {});
          });
          
        },
        // onPressed: () async {
        //   await context.push(TodoForm.route);
        //   setState(() {});
          
        // },
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder<List<Todo>>(
        future: TodoService.loadData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) =>
                  ListTile(title: Text(snapshot.data?[index].title ?? "")),
            );
          } else {
            return const Text("No Data");
          }
        },
      ),
    );
  }
}

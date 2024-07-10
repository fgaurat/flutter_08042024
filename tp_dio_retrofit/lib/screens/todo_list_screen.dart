import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tp_dio_retrofit/models/todo.dart';
import 'package:tp_dio_retrofit/services/todo_service.dart';

// import 'dart:developer' as developer;
class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  late TodoService _todoService;

  @override
  void initState() {
    super.initState();
    _todoService = TodoService(Dio());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Todo>>(
        future: _todoService.getTodos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key("key_${snapshot.data![index]}"),
                  onDismissed: (direction) {
                    _todoService
                        .deleteTodo(snapshot.data![index].id!)
                        .then((value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('dismissed')));
                    });
                  },
                  child: ListTile(
                    title: Text(snapshot.data![index].title),
                    
                    trailing: Checkbox(
                      // fillColor: const MaterialStatePropertyAll(Colors.red),
                      value: snapshot.data![index].completed,
                      onChanged: (value) {
                        _todoService.updateTodoPart(snapshot.data![index].id!, {
                          "completed": value
                        }).then((value) => setState(() {}));
                      },
                    ),
                  ),
                );
              },
            );
          } else {
            return const Text("No Data");
          }
        },
      ),
    );
  }
}

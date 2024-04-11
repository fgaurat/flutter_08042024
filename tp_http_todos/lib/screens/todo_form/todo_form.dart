import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_http_todos/models/todo.dart';
import 'package:tp_http_todos/services/todo_service.dart';

class TodoForm extends StatefulWidget {
  static const String route = "/add";

  const TodoForm({super.key});

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('TodoForm')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Todo todo = Todo(titleController.text,false,0,0);
                  TodoService.save(todo).then((response) {
                    GoRouter.of(context).pop();
                  });
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text('Processing Data ${titleController.text}')),
                  // );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

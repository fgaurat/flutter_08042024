import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:tp_http_todos/models/todo.dart';

class TodoService {
  
  static Future<http.Response> save(Todo todo) async {
    String url = getUrl();

    Future<http.Response> response = http.post(Uri.parse(url),
        body: todo.toJson(), headers: {"Content-type": "application/json"});
    return response;
  }

  static Future<List<Todo>> loadData() async {
    List todos;
    String url = getUrl();

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      todos = jsonDecode(response.body);
    } else {
      throw Exception("Failed to load todos");
    }
    return todos.map((t) => Todo.fromJson(t)).toList();
  }

  static String getUrl() {
    var url = dotenv.get("ANDROID_URL_TODOS", fallback: "");
    if (Platform.isIOS) {
      url = dotenv.get("IOS_URL_TODOS", fallback: "");
    }
    return url;
  }
}
  
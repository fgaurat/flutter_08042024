import 'package:hive/hive.dart';

part "todo.g.dart";

@HiveType(typeId: 1)
class Todo {
  @HiveField(0)
  String title;
  
  @HiveField(1,defaultValue: false)
  bool completed;

  Todo({required this.title, required this.completed});
}

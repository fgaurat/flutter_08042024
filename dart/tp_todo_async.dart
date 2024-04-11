Map getTodo(int id) {
  return {"id": id, "title": "Le titre $id", "completed": false};
}

Future<Map> getTodoAsync(int id) {
  Map todo = {"id": id, "title": "Le titre $id", "completed": false};

  Future<Map> f = Future<Map>.delayed(Duration(seconds: 1), () => todo);
  return f;
}

void main01(List<String> args) {
  // Map t = getTodo(1);
  // print(t);

  // Future<Map> f = getTodoAsync(1);
  // f.then((Map todo) {
  //   print(todo);
  //   return getTodoAsync(todo['id'] + 1);
  // }).then((Map todo) {
  //   print(todo);
  //   return getTodoAsync(todo['id'] + 1);
  // }).then((Map todo) {
  //   print(todo);
  //   return getTodoAsync(todo['id'] + 1);
  // });
  Future<Map> f1 = getTodoAsync(1);
  Future<Map> f2 = getTodoAsync(2);
  Future<Map> f3 = getTodoAsync(3);
  Future<Map> f4 = getTodoAsync(4);

  List<Future<Map>> all = [f1,f2,f3,f4];
  Future.wait(all).then((arr) => print(arr));

}

void main02(List<String> args) async {
  Map m1 = await getTodoAsync(1);
  print(m1);
  Map m2 = await getTodoAsync(2);
  print(m2);
  Map m3 = await getTodoAsync(3);
  print(m3);
  Map m4 = await getTodoAsync(4);
  print(m4);
  

}

void main(List<String> args) async {
  Future<Map> f1 = getTodoAsync(1);
  Future<Map> f2 = getTodoAsync(2);
  Future<Map> f3 = getTodoAsync(3);
  Future<Map> f4 = getTodoAsync(4);
  List<Map> t = await Future.wait([f1,f2,f3,f4]);

  print(t);

  
}
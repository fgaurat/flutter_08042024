import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> args) async {
  var url = "http://localhost:3000/todos";
  var response = await http.get(Uri.parse(url));
  if(response.statusCode == 200){
    // print(response.body);
    List<dynamic> todos = convert.jsonDecode(response.body);
    print(todos[0]);

  }


}
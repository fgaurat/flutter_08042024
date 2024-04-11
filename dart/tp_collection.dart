
// tp_collection => snake_case
// TpCollection => UpperCamelCase, PascalCase
// tpCollection => camelCase
// tp-collection => kebab-case, train-case,spin-case

void main(List<String> args) {
  
  // const l = [10, 40, 65];
  // var l = [10, 40, 65];

  List<int> l = [10, 40, 65];

  print(l);
  for (var i in l) {
    print(i);
  }

  l.add(345);
  print(l);
  l.forEach((element) { print(element);});

  // var f = (int element) { print(element);};
  Function(int) f = (int element) { print(element);};

  l.forEach(f);
  //...
  // l2 = [20,80,130] 

  // var l2 = l.map((e) {return e*2;});
  var l2 = l.map((e) => e*2).toList();
  print(l2);


  var m = {"formation":"Flutter","formateur":"GAURAT Frédéric","age":47};

  print(m);
  print(m['formation']);

}

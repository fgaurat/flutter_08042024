void main(List<String> args) {
  print("Hello World");
  int a = 3;
  print("valeur de a : $a");
  var b = "12";


  const c = 12;

  print(c);
  final d;
  d=12;
  print(d);
  printInteger(c);

  a  = add(4,5);
  print(a);

  add2(b:12,a:45);


  int? e;

  print(e!);

}

void printInteger(int a){
  print("a : $a");
}

int add(int a,int b){
  return a+b;
}

int add2({int? a,int? b}){
  return a!+b!;
}


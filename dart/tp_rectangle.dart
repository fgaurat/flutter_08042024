
import 'const_rectangle.dart';
import 'rectangle.dart';

void main(List<String> args) {
  
  Rectangle r = Rectangle(12,3);
  Rectangle r1 = Rectangle.fromString("12x3");
  
  ConstRectangle r2 = const ConstRectangle(12,3);
  ConstRectangle r3 = const ConstRectangle(12,3);



  print(r.longueur);
  r.longueur = 12;
  print(r);
  print(r1);
  print(r2);
  print(r3);


}
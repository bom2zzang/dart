import 'n12_getter_setter_value.dart';

void main() {
  var unit1 = Unit();

  // unit1._age = 30; prvate 접근 안됨
  unit1.age = 30; // 변수에 접근하듯이 사용. 의미상 setter
  print(unit1.age); // 의미상 getter

  unit1.name = "김민석";
  print(unit1.name);

  var unit2 = Unit()
    ..setName("행복")
    ..setAge(0);
  print(unit2.name);
  print(unit2.age);
}

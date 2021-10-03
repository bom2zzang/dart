import 'dart:math';

import 'n11_private_value.dart';

class Unit {
  late String _name; // private
  late int age; // public

  Unit(this._name, this.age);
}

void main() {
  /** dart에서 하나의 파일이 하나의 libarary
      그래서 private인 경우 해당 파일 또는 해당 라이브러리에서만 접근 가능
      외부파일에서는 접근 불가능*/

  var unit1 = Unit("양세종", 30);
  print(unit1._name); // 에러 없이 출력
  print(unit1.age);

  var unit2 = Unit2("시우민", 32);
  // print(unit2._name); // private 적용
  // print(unit2._age);
}

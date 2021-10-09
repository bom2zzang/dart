/**
  타입검사 as
  as는 다른 타입으로 변환은 되지 않고 상위 타입으로 변환할 수 있다.
  is는 객체가 특정타입이면 true
  is!는 객체가 특정 타입이면 false
 */

class Unit {
  var age = 11;
}

class Apple extends Unit {
  var name = "사과";
}

class Banana extends Unit {
  var name = "바나나";
}

void main() {
  Apple apple = Apple();
  Banana banana = Banana();

  Unit unit1 = apple as Unit; // as는 객체의 형변환, 현재 형변환 없이도 대입 가능
  Unit unit2 = banana as Unit;

  if (unit1 is Apple) {
    print("사과입니다"); 
    print(unit1.name);  // !=자바, 자바에서는 이렇게 참조가 안됨
  } else {
    print("사과가 아닙니다.");
  }
}

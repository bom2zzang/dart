/**  
  추상클래스: 인터페이스처럼 사용한다.
  extends와 implements를 사용한다.*/
abstract class Unit {
  move();
}

class Apple extends Unit {
  move() {  // 기능의 완성
    print("Apple.move");
  }
}

class Banana implements Unit {
  move() {
    print("Banana.move");
  }
}

void main() {
  var unit1 = Apple();
  unit1.move();
  var unit2 = Banana();
  unit2.move();
}

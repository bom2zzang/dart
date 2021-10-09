class Unit {
  var name = "kim";
}

class Unit2 extends Unit {
  var age = 13;
}

void main() {
  var person = Unit2();
  print(person.name);
  print(person.age);
}

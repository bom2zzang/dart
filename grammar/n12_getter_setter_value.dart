class Unit {
  // 변수 private 선언
  late String _name;
  late int _age;

  String get name {
    return 'My name is $_name';
  }

  set name(String val) {
    _name = val;
  }

  int get age => _age;

  set age(int val) {
    _age = val;
  }

  // 일반 메서드 형태로 setter 직접 생성
  void setName(String name) {
    this._name = name;
  }

  void setAge(int age) {
    this._age = age;
  }
}

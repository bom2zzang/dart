class Unit1 {
  // ?로 nullable 처리할 수도 있지만
  // 나중에 초기화 된다는 것을 명시해 줌
  late String name;
  late int age;

  Unit1(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

class Unit2 {
  int? num;
  int? no;

  // 초기화 리스트를 사용
  Unit2.init()
      : num = 10,
        no = 1 {
    // 생성자의 구현부가 실행하기 전에 인스턴스 변수를 초기화할 수 있다.
  }

  Unit2({int? num}) : no = 2 {
    this.num = num ?? 0;
  }
}

class Unit3 extends Unit2 {
  late int n;
  // Unit3을 생성할 때 num에 값이 들어오면 부모로 부터 상속받은
  // num에 값을 넣어준다.
  Unit3({int? num})
      : n = 999,
        super(num: num) {}
}

class Unit4 {
  final int n;
  final int no;

  // 상수 생성자 : with final 변수
  const Unit4(this.n, this.no);
}

void main() {
  // 디폴트 생성자가 없어서 error
  // var unit = new Unit(); //Unit Unit(String name, int age)

  // 자바 방식
  var a = new Unit1("김민석", 32);

  // new 생략 가능
  var b = Unit1("샤이니", 10);

  // 생성자의 초기화 리스트 사용
  Unit2 c = Unit2.init();
  print('Unit2.num : ${c.num}');
  print('Unit2.no : ${c.no}');

  Unit3 d = Unit3(num: 5);
  print('Unit3.n : ${d.n}');
  print('Unit3.num : ${d.num}');
  print('Unit3.no : ${d.no}');

  Unit4 e1 = Unit4(3, 4);
  Unit4 e2 = Unit4(3, 4);
  Unit4 e3 = const Unit4(3, 4);
  Unit4 e4 = const Unit4(3, 4);
  Unit4 e5 = new Unit4(3, 4);
  Unit4 e6 = new Unit4(3, 4);

  // 객체를 여러 번 사용하고 싶다면 const 생성자를 이용하여
  // 객체를 생성해야 한다
  print(identical(e1, e2)); // f
  print(identical(e1, e3)); // f
  print(identical(e2, e3)); // f
  print(identical(e3, e4)); // t
  print(identical(e1, e5)); // f
  print(identical(e3, e5)); // f
  print(identical(e5, e6)); // f

}

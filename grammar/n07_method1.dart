// 1.자바처럼 사용
void method1(String name) {
  print('name : $name');
}

// 2.파라미터 타입을 생략하면 dynamic
void method2(name) {
  print('name : $name');
}

// 3.파라미터 옵션 처리
void method3({String? name}) {
  print('name : $name');
}

// 4.여러가지 파라미터 처리
void method4({String? name, int? age}) {
  print('name : $name, age : $age');
}

// 5.필수 + 옵션
void method5(String name, {int? age}) {
  print('name : $name, age : $age');
}

// 6.디폴트 값
void method6(String name, {int age = 32}) {
  print('name : $name, age : $age');
}

// 7.필수
void method7(String name, {required int age}) {
  print('name : $name, age : $age');
}

// 8.파라미터 옵션 처리
void method8([String? name]) {
  print('name : $name');
}

// 9.여러가지 파라미터
void method9([String? name, int? age]) {
  print('name : $name, age : $age');
}

// 10.필수 + 옵션
void method10(String name, [int? age]) {
  print('name : $name, age : $age');
}

// 11.디폴트 값
void method11(String name, [int age = 10]) {
  print('name : $name, age : $age');
}

void main() {
  print("1.자바처럼 사용");
  method1("여진구");

  print("2.파라미터 타입을 생략하면 dynamic");
  method2("김선호");
  method2(1);

  print("***************** Named parameters");
  print("3.파라미터 옵션 처리");
  method3();
  method3(name: "시우민");

  print("4.여러가지 파라미터 처리");
  method4(name: "김민석");
  method4(age: 32);

  print("5.필수 + 옵션");
  method5("김동욱");
  method5("양세종", age: 30);

  print("6.디폴트 값");
  method6("김민석");

  print("7.필수 ");
  method7("옹성우", age: 27);

  print("***************** Positional parameters");
  print("8.파라미터 옵션 처리");
  method8();
  method8("시우민");

  print("9.여러가지 파라미터");
  method4(name: "김민석");
  method4(age: 32);

  print("10.필수 + 옵션");
  method5("김동욱");
  method5("양세종", age: 30);

  print("11.디폴트 값");
  method6("김민석");
}

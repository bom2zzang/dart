void main() {
  // non-nullable
  int num1 = 5;
  // num1 = null; A value of type 'Null' can't be assigned to a variable of type 'int'.

  // nullable
  int? num2 = 2;
  num2 = null;
  String? str1 = null;

  // non-nullable 변수는 값 대입없이 사용하면 error
  // int num2; The value of the local variable 'num2' isn't used.

  // var Type
  var a = 1; // int Type 유추
  var b = "String!"; // String Type 유추됨
  var c = null; // dynamic Type 유추됨
  var d; // dynamic Type 유추됨
  // var? e; var Type뒤에는 ?를 추가할 수 없다.
  // var로 선언시 nullable과 non-nullable로 자동 유추

  // null safety operator
  /** ! : null check operator - runtime error throw
          변수 뒤에 추가한다.
          변수 값이 null이면 runtime error 발생*/
  int e = 3;
  int? f;
  f = 5; // 이 줄이 없으면 다음줄 에러
  e = f; // 컴파일 전 체크
  e = f!; // 실행 시 체크 Warning: Operand of null-aware operation '!' has type 'int' which excludes null.

  /** ?. ?[ ] ?.. : null aware operator
                    값이 대입되지 않고 사용되면 null일 수 있다*/
  String? name;
  name = name?.toLowerCase(); // null이 아닐 때 메서드 실행

  int num = int.tryParse('0a0') ?? -1;
  print(num);
}

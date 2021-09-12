// 변수
void main() {
  int i = 1; // 정수
  double d = 1.1; // 실수

  // Dart에서는 자동 형변환을 지원하지 않는다.
  // 정수, 실수 간 변환
  d = i.toDouble(); // 명시적 형변환
  d = 10.1;
  i = d.toInt(); // 소수점 이하 절사

  num n1 = 10;
  num n2 = 10.1; // num타입은 정수와 실수를 포함

  String s = "문자열"; // 문자열
  bool b = true; // 참 또는 거짓

  // 문자를 숫자로 변환
  String sNum = '10';
  i = int.parse(sNum);
  d = double.parse(sNum);

  // 예외처리
  try {
    int errNum = int.parse(s);
    print(errNum);
  } on FormatException catch (e) {
    print("FormatException");
    print(e);
  }

  //타입추론
  var v1 = 10; // int 타입
  var v2 = 10.0; // double 타입
}

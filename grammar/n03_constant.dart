// 상수
void main() {
  const String nm1 = "상수"; // 상수 : 컴파일시 결정
  final String nm2 = "상수"; // 상수 : 동적으로 결정
  // name = "변해라"; // Error: Can't assign to the final variable 'name'.

  final age1 = 32; // 타입 생략 가능
  final age2;
  age2 = 33; 
}

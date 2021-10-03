void sumNum(int a, int b) {
  print(a + b);
}

void comeParam(var a, var b, var c) {
  int val1 = int.parse(a);
  int val2 = int.parse(b);

  c(val1, val2);
}

void main() {
  // 메서드도 변수에 대입 가능
  var func1 = sumNum;

  // 변수를 이용해 메서드 호출
  func1(1, 2);

  // 메서드 파라미터에 메서드 사용
  comeParam("1", "2", func1);
}

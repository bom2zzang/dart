void main() {
  int a = 12;
  int b = 0;
  int c;
  double d;

  // on은 exception 객체가 필요 없을 때
  // IntegerDivisionByZeroException, FormatException
  try {
    c = a ~/ b;
  } on IntegerDivisionByZeroException {
    print('IntegerDivisionByZeroException');
  }

  // catch는 exception 객체가 필요 할 때
  try {
    d = a / b;
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  }

  // 자바처럼 사용
  try {
    d = a / b;
  } catch (e) {
    print(e);
  }

  //throw
  divide(a, b);
}

// exception 객체를 throw
divide(int a, int b) {
  if (b == 0) {
    throw new Exception('Cannot divide by zero');
  }
  return a / b;
}


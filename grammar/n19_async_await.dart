import 'dart:io';

//비동기
void main() async {
  print("시작");
  myRequest1();
  print("끝");

  // 결과를 기다렸다 변수에 받음
  print("시작2");
  var val2 = await myRequest2(10);
  print("val2 : $val2");
  print("끝2");

  print("시작3");
  var val3 = await myRequest3(10);
  print("val3 : $val3");
  print("끝3");
}

// 시간이 걸리는 작업은 Future로 묶어줌
// async, await는 pair : await는 async 내부에서만 사용 가능
Future<int> myRequest1() async {
  print("요청시작1");
  for (var i = 0; i < 10; i++) {
    stdout.write('$i ');
    // await는 함수에만 사용 가능ㅇ
    await Future.delayed(Duration(seconds: 1));
  }
  print("\n 요청 끝2");
  return 10;
}

Future<int> myRequest2(n) {
  //결과가 미래에 생김
  var req = Future(() {
    print("작업시작2");
    int num = 0;
    for (var i = 0; i < n; i++) {
      num = n + i;
    }
    print("작업 끝2");
    return num;
  });
  // 결과가 생기기 전에 리턴, 잘못된 사용법
  return req;
}

Future<int> myRequest3(n) {
  // 결과가 미래에 생김
  return Future(() {
    print("작업시작3");
    int num = 0;
    for (var i = 0; i < n; i++) {
      num = n + i;
    }
    print("작업 끝3");
    return num;
  });
}

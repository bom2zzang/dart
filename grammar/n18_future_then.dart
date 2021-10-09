// 비동기
void main() {
  print("시작1-1");
  var myReq1 = myRequest1(10);
  myReq1.then((val) {
    print("작업1-1, $val");
  }, onError: (e) {
    print(e);
  });
  print("끝1-1");
  print("==================");

  print("시작1-2");
  myRequest1(10).then((val) {
    print("작업1-2, $val");
  }, onError: (e) {
    print(e);
  });
  print("끝1-2");
  print("==================");

  int nCnt = 10;
  // 클래스 형태로 사용하기
  Future<int> myRequest2 = new Future(() {
    int num = 0;
    for (var i = 0; i < nCnt; i++) {
        num = num + i;
    }
    return num;
  });
  print("시작2");
  myRequest2.then((val) {
    print("작업2, $val");
  }, onError: (e) {
    print(e);
  });
  print("끝2");
}

Future<int> myRequest1(n) {
  return Future(() {
    int num = 0;
    for (var i = 0; i < n; i++) {
      num = num + i;
    }
    return num;
  });
}

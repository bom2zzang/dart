// Collection
void main() {
  /*  List
      데이터 순서가 있고 중복을 허용함
      Dart는 배열을 제공하지 않는다 */
  List<String> list1 = ['a', 'b', 'c', 'd'];
  List<int> list2 = [1, 2, 3, 1];

  var list3 = ['a', 'b', 'c', 'a'];
  list3.add('d');
  print(list3);

  list3.remove('a'); // 첫번째 a 삭제
  list3.removeAt(2); // 인덱스에 위치한 값 삭제
  print(list3);

  // 인덱스로 개별 값 접근
  for (int i = 0; i < list3.length; i++) {
    print('list3[${i}] -> ${list3[i]}');
  }

  for (var each in list3) {
    print(each);
  }

  // 스프레드 연산자!
  var list4 = [...list2, 5, 6, 7];
  print(list4);

  /*  Set
      데이터 순서가 없고 중복을 허용하지 않는다 */
  // Set<String> set1 = {'c', 'b', 'a', 'a'}; // 초기값 에러
  Set<String> set1 = {'c', 'b', 'a'};
  print(set1);

  set1.add('a'); // 추가되지 않는다.
  set1.add('d');
  print(set1);

  set1.remove('c');
  print(set1);

  // 값 존재 유무 체크가 목적
  var bChk = set1.contains('b');
  if (bChk) {
    print('b!');
  }

  // 인덱스로 개별 값 접근
  for (int i = 0; i < set1.length; i++) {
    print('set1[${i}] -> ${set1.elementAt(i)}');
  }

  for (dynamic each in set1) {
    print(each);
  }

  // 스프레드 연산자
  var set2 = {...set1, 'x', 'y', 'z'};
  print(set2);

  /*  Map
      key, value로 이루어진 데이터 */
  var map1 = {'key1': 'hello', 'key2': 0, 'key3': true};
  print(map1);

  Map<String, int> map2 = Map();
  map2['시우민'] = 90;
  map2['여진구'] = 97;
  print(map2);

  map2['김동욱'] = 83; // 추가
  map2['시우민'] = 0; // 수정
  print(map2);

  map2.remove('시우민'); // ㅠㅠ
  print(map2);

  int? val = map2['시우민']; // 찾는 값이 없으면 null 반환
  print(val);
  int val2 = map2['시우민'] ?? -1;
  print(val2);

  var val3 = map2['시우민']; // 찾는 값이 없으면 null 반환
  print(val3);
  val3 = 1; // null이 들어있으므로 아직 타입이 정해진 게 아님
  print(val3);

  // 해당 map이 해당 key값을 가지고 있는지 점검
  var bChk2 = map2.containsKey('여진구');
  if (bChk2) {
    print("여진구 있다!");
  }
}

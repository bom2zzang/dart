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

  /* Set
   */


  /* Map
  */
}

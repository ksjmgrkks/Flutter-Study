void main() {
  final String name = '김규성'; // String 생략 가능
  const String name2 = '규성'; // String 생략 가능
  print(name);
  // name = '규성'; final로 변수를 선언하면 재할당 불가능!
  // name2 = '김규성'; const로 변수를 선언하면 재할당 불가능!
  // 그렇다면 final과 const의 차이는??
  final DateTime now = DateTime.now(); // final은 컴파일 시점(빌드 타임)에 값을 몰라도 할당 가능!
  // const DateTime now = DateTime.now(); const는 컴파일 시점(빌드 타임)에 이미 값을 알고 있어야 하기에 할당 불가능!
}

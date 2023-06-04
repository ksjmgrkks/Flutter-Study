void main() {
  print('Hello Kyu Seong'); //Hello Kyu Seong
  
  //변수 선언
  var name = '규성'; //String 타입으로 자동 추론
  print(name); // 규성
  
  name = '다트 언어를 공부하는 규성'; //같은 타입의 변수는 재할당 가능
  print(name); //다트 언어를 공부하는 규성
  
  //정수(integer)
  int number1 = 2;
  int number2 = 4;
  print(number1 + number2); // 6
  print(number1 - number2); // -2
  print(number1 / number2); // 0.5
  print(number1 * number2); // 8
  
  //실수(double)
  double number3 = 2.5;
  double number4 = 0.5;
  print(number3 + number4); // 3
  print(number3 - number4); // 2 
  print(number3 / number4); // 5
  print(number3 * number4); // 1.25
  
  //불리언(boolean)
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue); //true
  print(isFalse); //false
  
}

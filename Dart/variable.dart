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
  
  //문자열(String)
  String firstName = 'Kyu Seong';
  String lastName = 'Kim';
  
  print(firstName + lastName); // Kyu SeongKim
  print(firstName + ' ' + lastName); // Kyu Seong Kim
  print('풀 네임: ${firstName} ${lastName}'); // 풀 네임: Kyu Seong Kim
  print('풀 네임: $firstName $lastName'); // 풀 네임: Kyu Seong Kim
  print('${firstName.runtimeType} $lastName'); // String Kim
  print('$firstName.runtimeType $lastName'); // Kyu Seong.runtimeType Kim
    
  //dynamic
  dynamic dName = '규성';
  var vName = '규성';
  dName = 1; // 가능
  // vName = 1; 불가능 -> var로 선언된 변수는 재할당시 이전 타입과 맞아야 함  
  
}

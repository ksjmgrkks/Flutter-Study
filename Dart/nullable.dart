void main() {
  // nullable - null이 될 수 있다.
  // non-nullable - null이 될 수 없다.
  // null - 아무런 값도 있지 않다.
  String name = '규성';
    Stirng? name2 = '규성';
  // name = null; 불가능 -> String은 non-nullable이기 때문
  name2 = null; // 가능 -> String?은 nullable이기 때문
  /* name2와 같은 nullable 변수에'!'를 붙이면 절대 null이 아니라는 표시임 (kotlin의 not-null assertion operator(!!) 표시와 같음)
     null이면 NoSuchMethodError 발생 (자바나 코틀린의 Null Pointer Exception(NPE))
     ex) print(name2!) */
  
  double? number = 4.0;
  print(number); // 4
  number = 2.0;
  print(number); // 2
  number = null;
  print(number); // null
  number ??= 3.0; //number가 null이면 3.0을 할당하고, 그렇지 않으면 원래 값 유지
}

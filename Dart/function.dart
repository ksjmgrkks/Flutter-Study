void main() {
  addNumbers(10, 20, 30);
  addNumbers(20, 35, 40);

  addNumbersOptional(10);
  addNumbersOptional(10, 20);
  addNumbersOptional(10, 20, 30);
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument - 매개변수
// positional parameter - 순서가 중요한 파라미터
addNumbers(int x, int y, int z) {
  int sum = x + y + z;
  
  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('합이 짝수입니다.');
  } else {
    print('합이 홀수입니다.');
  }

}

// optional parameter - 있어도 되고 없어도 되는 파라미터
addNumbersOptional(int x, [int y = 0, int z = 0]){ //0은 y,z 의 기본값!
  addNumbers(x, y, z);
}

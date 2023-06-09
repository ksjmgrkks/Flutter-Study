void main() {
  addNumbers(10, 20, 30);
  addNumbers(20, 35, 40);

  addNumbersOptional(10);
  addNumbersOptional(10, 20);
  addNumbersOptional(10, 20, 30);
  
  addNumbersNamed(x: 10, y: 20, z: 30); // 결과 동일
  addNumbersNamed(y: 20, x: 10, z: 30); // 결과 동일 
  
  addNumbersNamed(y: 20, x: 10); // z == 0
  
  addNumbersMixed(10, y: 10);
  
  int result1 = addNumbersReturnSum(10, 20 , 30);
  int result2 = addNumbersReturnSum(10, 30 , 40);
  
  print('sum : ${result1 + result2}'); // sum : 140
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

// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않음)
// required 를 빼면 optional이 됨
addNumbersNamed({
  required int x,
  required int y,
  int z = 0,
}) {
  addNumbers(x, y, z);
}

addNumbersMixed(int x, {
  required int y,
  int z = 0,
}) {
  addNumbers(x, y, z);
}

// arrow function
int addNumbersReturnSum(int x, int y, int z) => x + y + z;

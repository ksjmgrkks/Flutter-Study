void main() {
  // if문
  int number = 3;
  
  if (number % 2 == 0) {
    print('짝수');  
  } else {
    print('홀수'); // 출력
  }
  
  if (number % 3 == 0) {
    print('나머지 0'); // 출력
  } else if(number % 3 == 1) {
    print('나머지 1'); 
  } else {
    print('나머지 2'); 
  }
  
  //switch 문
  switch(number % 3) {
      case 0:
        print('나머지 0'); // 출력
        break;

      case 1:
        print('나머지 1');
        break;

      default: //if문에서의 else
        print('나머지 2');
        break;
  }
  
}

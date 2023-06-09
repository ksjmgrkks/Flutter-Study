void main() {
  // for loop
  // 변수 선언; 어떤 조건일 때까지; 한번 loop가 돌때 마다 실행할 코드
  for(i = 0; i < 10; i++) {
    print(i); // 0 ~ 9 출력  
  }
  
  int total = 0;
  
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  
  for(int i = 0; i < numbers.length; i++){
    total += numbers[i];
  }
  
  print(total); // 21 
  
  total = 0;
  
  for(int number in numbers){
    total += number;
  }
  
  print(total); // 21
  
  // while loop
  var total = 0;
  
  while(total < 10){
    total += 2;
  }
  
  print(total); // 10
  
  total = 0;
  
  do{
    total += 2;
  }while(total < 10);
  
  print(total); // 10
  
  while(total < 10){
    total += 2;
  }
  
  print(total); // 10
  
  do{
    total += 2;
  }while(total < 10);
  
  print(total); // 12
  
  /* break; : 루프 전체를 종료
     continue; : 현재 루프만 종료 */
    
}

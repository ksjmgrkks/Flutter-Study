void main() {
 int number = 1;
  
  // 타입 비교
  print(number is int); // true 
  print(number is! int); // false
  
  //and(&&), or(||)  
  bool result = 12 > 10 && 1 > 0; // true
  bool result2 = 12 > 10 && 0 > 1; // false
  bool result3 = 12 > 10 || 1 > 0; // true
  bool result4 = 12 > 10 || 0 > 1; // true
  bool result5 = 12 < 10 || 0 > 1; // false
}

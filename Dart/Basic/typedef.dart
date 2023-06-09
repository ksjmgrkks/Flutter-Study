void main() {
   print(calculate(10, 20, add)); // 30
   print(calculate(10, 20, subtract)); // -10
   print(calculate(10, 20, multiply)); // 200
}

//signature
typedef Operation = int Function(int x, int y);

int add(int x, int y) => x + y;
int subtract(int x, int y) => x - y;
int multiply(int x, int y) => x * y;

int calculate(int x, int y, Operation operation){
  return operation(x, y);
}

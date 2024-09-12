



int fibonacci(int n) {
  // Caso base: F(0) = 0 y F(1) = 1
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  }
  // Llamada recursiva: F(n) = F(n-1) + F(n-2)
  return fibonacci(n - 1) + fibonacci(n - 2);
}


void main() {
  print('Los primeros 10 números de la serie de Fibonacci son:');
  for (int i = 0; i < 10; i++) {
    print('F($i) = ${fibonacci(i)}');
  }
}

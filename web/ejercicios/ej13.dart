int factorial(int n) {
  // caso base: si n es 0 o 1, el factorial es 1
  if (n <= 1) {
    return 1;
  }
  // llamada recursiva: n * factorial(n-1)
  return n * factorial(n - 1);
}


void main() {

  int numero1 = 5;
  int resultado1 = factorial(numero1);
  print('El factorial de $numero1 es: $resultado1');

  int numero2 = 0;
  int resultado2 = factorial(numero2);
  print('El factorial de $numero2 es: $resultado2');

  int numero3 = 7;
  int resultado3 = factorial(numero3);
  print('El factorial de $numero3 es: $resultado3');
}

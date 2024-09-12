void main() {
  // Crear una lista de números enteros
  List<int> numeros = [3, 6, 9, 12, 15];

  // Recorrer la lista e imprimir cada número en la consola
  print('Números en la lista:');
  for (int numero in numeros) {
    print(numero);
  }

  // Calcular la suma de todos los números de la lista
  int suma = 0;
  for (int numero in numeros) {
    suma += numero;
  }
  print('Suma de todos los números: $suma');

  // Encontrar el número mayor y el menor en la lista
  int numeroMayor = numeros[0];
  int numeroMenor = numeros[0];

  for (int numero in numeros) {
    if (numero > numeroMayor) {
      numeroMayor = numero;
    }
    if (numero < numeroMenor) {
      numeroMenor = numero;
    }
  }

  print('Número mayor: $numeroMayor');
  print('Número menor: $numeroMenor');
}

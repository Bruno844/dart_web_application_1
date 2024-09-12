void main() {
  // Lista original de números enteros
  List<int> numeros = [3, 6, 9, 12, 15];

  // Crear una nueva lista que contenga solo los números pares
  List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();

  // Usar la función map para crear una nueva lista que contenga el doble de cada número de la lista original
  List<int> numerosDobles = numeros.map((numero) => numero * 2).toList();

  // Mostrar las listas resultantes
  print('Números pares: $numerosPares');
  print('Números dobles: $numerosDobles');
}

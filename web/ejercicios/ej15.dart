


int busquedaBinaria(List<int> lista, int valor, int inicio, int fin) {
  // si el rango es inválido, el valor no está en la lista
  if (inicio > fin) {
    return -1; // Indica que el valor no fue encontrado
  }

  // Calcular el índice del elemento medio
  int medio = (inicio + fin) ~/ 2;

  // Comparar el valor a buscar con el valor en el índice medio
  if (lista[medio] == valor) {
    return medio; // El valor se encontró en el índice medio
  } else if (lista[medio] < valor) {
    // Buscar en la mitad derecha
    return busquedaBinaria(lista, valor, medio + 1, fin);
  } else {
    // Buscar en la mitad izquierda
    return busquedaBinaria(lista, valor, inicio, medio - 1);
  }
}


void main() {
  List<int> listaOrdenada = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  
  // Valores a buscar
  List<int> valoresABuscar = [7, 10, 13, 20, 1];

  // Prueba de la función búsqueda binaria con diferentes valores
  for (int valor in valoresABuscar) {
    int resultado = busquedaBinaria(listaOrdenada, valor, 0, listaOrdenada.length - 1);
    if (resultado != -1) {
      print('El valor $valor se encuentra en el índice $resultado.');
    } else {
      print('El valor $valor no se encuentra en la lista.');
    }
  }
}

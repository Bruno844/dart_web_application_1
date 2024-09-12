class Estudiante {
  String nombre;
  int edad;
  List<int> calificaciones;

  Estudiante(this.nombre, this.edad, this.calificaciones);

  double promedioCalificaciones() {
    int suma = calificaciones.reduce((a, b) => a + b);
    return suma / calificaciones.length;
  }

}


void main() {
  // Crear una lista de objetos Estudiante con al menos 5 estudiantes
  List<Estudiante> estudiantes = [
    Estudiante('Juan', 20, [7, 8, 9]),
    Estudiante('María', 22, [6, 6, 7]),
    Estudiante('Luis', 19, [4, 5, 6]),
    Estudiante('Ana', 21, [8, 9, 10]),
    Estudiante('Carlos', 23, [5, 6, 7]),
  ];

  
  List<String> estudiantesConPromedioMayorA6(List<Estudiante> estudiantes) {
    return estudiantes
        .where((estudiante) => estudiante.promedioCalificaciones() > 6)
        .map((estudiante) => estudiante.nombre)
        .toList();
  }

  // Obtener los nombres de los estudiantes con promedio mayor a 6
  List<String> nombresConPromedioMayorA6 =
      estudiantesConPromedioMayorA6(estudiantes);

  // Imprimir los nombres de los estudiantes que cumplen esta condición
  print('Estudiantes con promedio mayor a 6:');
  for (String nombre in nombresConPromedioMayorA6) {
    print(nombre);
  }
}


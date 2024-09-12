




import 'dart:io';

class Tarea {
  String descripcion;
  bool completada;

  Tarea(this.descripcion, {this.completada = false});

  //metodo override,extiende funcionalidad de una clase padre
  //en este caso extendemos su uso en base a la clase padre que seria object.toString();
  @override
  String toString() {
    return '[${completada ? 'X' : ' '}] $descripcion';
  }
}

void main() {
  List<Tarea> tareas = [];
  bool continuar = true;

  while (continuar) {
    print('\n--- Lista de Tareas Pendientes ---');
    for (int i = 0; i < tareas.length; i++) {
      print('${i + 1}. ${tareas[i]}');
    }
    print('\n¿Qué deseas hacer?');
    print('1. Agregar una nueva tarea');
    print('2. Marcar una tarea como completada');
    print('3. Salir');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        print('Ingresa la descripción de la nueva tarea:');
        String? descripcion = stdin.readLineSync();
        if (descripcion != null && descripcion.isNotEmpty) {
          tareas.add(Tarea(descripcion));
          print('Tarea agregada exitosamente.');
        } else {
          print('Descripción inválida.');
        }
        break;

      case '2':
        print('Ingresa el número de la tarea que deseas marcar como completada:');
        String? numeroTarea = stdin.readLineSync();
        int? index = int.tryParse(numeroTarea ?? '');
        if (index != null && index > 0 && index <= tareas.length) {
          tareas[index - 1].completada = true;
          print('Tarea marcada como completada.');
        } else {
          print('Número de tarea inválido.');
        }
        break;

      case '3':
        continuar = false;
        print('Saliendo del gestor de tareas. ¡Hasta luego!');
        break;

      default:
        print('Opción inválida. Por favor, intenta de nuevo.');
    }
  }
}

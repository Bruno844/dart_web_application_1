/*

Ejercicio 10: Agenda de Contactos
o Desarrolla un programa que use un mapa para almacenar nombres de
contactos y sus números de teléfono. Permite agregar, eliminar y buscar
contactos en la agenda.


*/

import 'dart:io';


void agregarContacto(Map<String, String> agenda) {
  print('Ingresa el nombre del contacto:');
  String? nombre = stdin.readLineSync();

  if (nombre != null && nombre.isNotEmpty) {
    print('Ingresa el número de teléfono de $nombre:');
    String? telefono = stdin.readLineSync();

    if (telefono != null && telefono.isNotEmpty) {
      agenda[nombre] = telefono;
      print('Contacto agregado: $nombre - $telefono');
    } else {
      print('Número de teléfono inválido.');
    }
  } else {
    print('Nombre de contacto inválido.');
  }
}

void eliminarContacto(Map<String, String> agenda) {
  print('Ingresa el nombre del contacto que deseas eliminar:');
  String? nombre = stdin.readLineSync();

  if (nombre != null && nombre.isNotEmpty) {
    if (agenda.containsKey(nombre)) {
      agenda.remove(nombre);
      print('Contacto eliminado: $nombre');
    } else {
      print('El contacto $nombre no se encuentra en la agenda.');
    }
  } else {
    print('Nombre de contacto inválido.');
  }
}

void buscarContacto(Map<String, String> agenda) {
  print('Ingresa el nombre del contacto que deseas buscar:');
  String? nombre = stdin.readLineSync();

  if (nombre != null && nombre.isNotEmpty) {
    if (agenda.containsKey(nombre)) {
      print('Contacto encontrado: $nombre - ${agenda[nombre]}');
    } else {
      print('El contacto $nombre no se encuentra en la agenda.');
    }
  } else {
    print('Nombre de contacto inválido.');
  }
}

void mostrarContactos(Map<String, String> agenda) {
  if (agenda.isNotEmpty) {
    print('\n--- Lista de Contactos ---');
    agenda.forEach((nombre, telefono) {
      print('$nombre: $telefono');
    });
  } else {
    print('La agenda está vacía.');
  }
}


void main() {
  Map<String, String> agenda = {};
  bool continuar = true;

  while (continuar) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar un nuevo contacto');
    print('2. Eliminar un contacto');
    print('3. Buscar un contacto');
    print('4. Mostrar todos los contactos');
    print('5. Salir');
    print('Elige una opción:');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarContacto(agenda);
        break;

      case '2':
        eliminarContacto(agenda);
        break;

      case '3':
        buscarContacto(agenda);
        break;

      case '4':
        mostrarContactos(agenda);
        break;

      case '5':
        continuar = false;
        print('Saliendo de la agenda. ¡Hasta luego!');
        break;

      default:
        print('Opción inválida. Por favor, intenta de nuevo.');
    }
  }
}


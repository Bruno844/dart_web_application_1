
/*

2. Ejercicio 4: Sumatoria de Números
o Crea un programa que pida al usuario un número y luego sume todos los
números desde 1 hasta el número proporcionado utilizando un bucle for


*/

import 'dart:io';

void main() {
  
  stdout.write('ingrese el numero donde quiere que se sume: ');

  String? num = stdin.readLineSync();

  int suma = 0;

  if(num != null){
    int numArray = int.parse(num);
    try {
      for (var i = 1; i <= numArray; i++) {
        suma = suma + i;
      }

      stdout.writeln('la suma de todos es $suma');
      
    } catch (e) {
      stdout.write(e);
    }
  }


}
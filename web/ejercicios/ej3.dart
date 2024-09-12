/*
1. Ejercicio 3: Números Pares o Impares
o Escribe un programa que solicite un número al usuario y determine si es
par o impar utilizando una estructura if.
*/

import 'dart:io';

void main() {
  
  stdout.write('ingrese un numero a evaluar: ');

  String? num = stdin.readLineSync();

  if(num != null){
     int numInt = int.parse(num);
    try {
      if(numInt % 2 == 0){
        stdout.writeln('el numero $numInt ingresado es par!');
      }else{
       stdout.writeln('el numero $numInt es impar!!');
      }
    } catch (e) {
      stdout.writeln(e);
    }
  }


}
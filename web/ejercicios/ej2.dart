

import 'dart:io';

/*

. Ejercicio 2: Operaciones con Variables
o Escribe un programa que solicite al usuario dos números enteros. Realiza
operaciones de suma, resta, multiplicación y división entre estos números
e imprime los resultados.


*/



void main() {
  stdout.writeln("ingrese dos numeros a evaluar: ");

  String? num1 = stdin.readLineSync();
  String? num2 = stdin.readLineSync();

  if(num1 != null && num2 != null){
    try {
      int number1 = int.parse(num1);
      int number2 = int.parse(num2);

      int suma = number1 + number2;
      int resta = number1 - number2;
      int multiplicacion = number1 * number2;
      int division = (number1 ~/ number2);
      stdout.writeln('la suma es: $suma');
      stdout.writeln('la resta es: $resta');
      stdout.writeln('la multiplicacion es: $multiplicacion');
      stdout.writeln('la division es: $division');
    } catch (e) {
      stdout.writeln(e);
    }
  }
}

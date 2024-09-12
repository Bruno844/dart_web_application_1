/*

1. Ejercicio 5: Función de Área de un Círculo
o Define una función que calcule el área de un círculo dada su radio. Usa la
fórmula π×radio2\pi \times \text{radio}^2π×radio2. Pide al usuario el radio
y muestra el área calculada.



*/


import 'dart:io';
import 'dart:math';

void main() {

  stdout.write('ingrese el radio del circulo a calcular: ');

  String? numRadio = stdin.readLineSync();

  if(numRadio != null){
    int radio = int.parse(numRadio);
    try {
      double pi = 3.14;
      double area = (pi * pow(radio, 2));
      stdout.writeln('el area del circulo es $area');
      
    } catch (e) {
      stdout.writeln(e);
    }
  }
  
}
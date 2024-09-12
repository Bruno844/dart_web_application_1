/*

Ejercicio 8: Clase CuentaBancaria
o Crea una clase CuentaBancaria que tenga propiedades como titular,
saldo, y métodos como depositar y retirar. Asegúrate de que no se pueda
retirar más de lo que hay en la cuenta.


*/

import 'dart:io';

// ignore: camel_case_types
class cuentaBancaria{
   
  String? titular;
  int saldo;
 

  cuentaBancaria(this.titular,this.saldo);



  //metodos
  bienvenida(){

    stdout.writeln('bienvenido $titular de nuevo!');

  }


  depositarDinero(){
    stdout.writeln('cuanto va a querer depositar: ');
    stdout.writeln('hasta ahora tenes $saldo');
    String? deposito = stdin.readLineSync();
   
    if(deposito != null){
      int depositoFinal = int.parse(deposito);
      int res = depositoFinal + saldo;

      stdout.writeln('ahora tenes $res');

    }
  }

  extraerDinero(){
    stdout.writeln('va a querer sacar dinero');
    String? extraccion = stdin.readLineSync();
    if(extraccion == 'si'){
      try {
        stdout.writeln('cuanta va a querer sacar');
        stdout.writeln('hasta ahora tenes $saldo');
        String? extr = stdin.readLineSync();
        if(extr != null){
          int extraccionFinal = int.parse(extr);
          if(extraccionFinal > saldo){
            stdout.write('el orden de extraccion es mayor al deposito que usted tiene');
          }else{
            int res = saldo - extraccionFinal;
            stdout.writeln('su extraccion fue de $extraccionFinal , y el saldo actual es de $res');
          }
        }
        
      } catch (e) {
        stdout.writeln(e);
      }
    }else{
      stdout.writeln('vuelva pronto!');
    }

  }


}



void main() {

  cuentaBancaria cuenta = cuentaBancaria('bruno', 400);
  cuenta.bienvenida();
  cuenta.depositarDinero();
  //cuenta.saldo;
  cuenta.extraerDinero();

  
}
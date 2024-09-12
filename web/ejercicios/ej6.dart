/*

2. Ejercicio 6: Función para Determinar Palíndromos
o Crea una función que reciba una cadena y devuelva true si es un
palíndromo (se lee igual de adelante hacia atrás) y false en caso contrario.
Prueba la función con diferentes entradas.


*/

bool esPalidromo(String cadena){

  //elimino espacios y lo convierto a minuscula
  String procesada = cadena.replaceAll(' ', '').toLowerCase();


  //Comparo la cadena procesada con su reverso
  return procesada == procesada.split('').reversed.join('');
  //el split elimina los espacios
  //el reversed pone los ultimos elementos al principio,como que los da vuelta
  //y el join es un metodo para unir todos esos elementos dependiendo lo que le pongas en el parentesis
  //como en este caso no hay nada, significa que tienen que ir los valores de ese string, todos juntos,osea sin separacion entre esos elementos del string

}


void main(){
  String cadena = 'hola';
  print(esPalidromo(cadena) ? 'es un palindromo' : 'no es un palindromo' );
}
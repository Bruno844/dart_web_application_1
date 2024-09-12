/*

Define una clase Persona con propiedades nombre y edad. Crea un
constructor para inicializar estas propiedades. Añade un método
mostrarDatos que imprima los datos de la persona.


*/

class  Persona{
  String nombre;
  int edad;

  //constructor
  Persona(this.nombre, this.edad);


  //metodos para trabajar con las instancias de objetos
  void saludar(){
    print("hola, mi nombre es $nombre y tengo $edad años");
  }

}

//aca instanciamos el objeto en la funcion principal del programa
void main() {
  Persona persona = Persona('bruno', 12);
  persona.saludar();
  
}
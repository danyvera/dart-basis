void main(){
                  //new "nombre de la clase que vamos a utilizar"(parametros)
  final wolverine = new Heroe(nombre:'Logan', poder: 'Regeneración');
  
//   wolverine.nombre = 'Logan';
//   wolverine.poder = 'Regeneración';
  
  print( wolverine );
  
}

//la clase
class Heroe {
  
  String nombre;
  String poder;
  
  //constructor de la clase
  Heroe({ 
    //los argumentos por nombre, deben ser siempre obligatorios para que no marque error
    required this.nombre, 
    required this.poder 
  });
  
  //NOTA: esto:
//   Heroe( String pNombre ) {
//     this.nombre = pNombre;
//   }
  //es lo mismo que esto:
//Heroe (this.nombre);
  
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${ this.poder }';
  }
}

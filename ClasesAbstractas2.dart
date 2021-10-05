//NOTA: Una clase abstracta es aquella que no se puede instanciar
void main(){
  
  final wolverine = new Heroe(nombre:'Logan', poder: 'Regeneración');
  
//   wolverine.nombre = 'Logan';
//   wolverine.poder = 'Regeneración';
  
  print( wolverine );
  
}


class Heroe {
  
  String nombre;
  String poder;
  
  Heroe({ 
    required this.nombre, 
    required this.poder 
  });
  
//   Heroe( String pNombre ) {
//     this.nombre = pNombre;
//   }
  
  
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${ this.poder }';
  }
}
© 2021 GitHub, Inc.

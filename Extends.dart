//la palabra reservada "extends" de una clase sirve para que podamos extender una clase con funcionalidades de otra y tambien podemos utilizar clases abstractas
//cuando yo extiendo con "extends", eso quiere decir que en la clase en la que extiendo, ya puedo utilizar las propiedades, metodos y nombres de la clase extendida

void main() {
    
  final superman = new Heroe('Clark Kent');
  final luthor   = new Villano('Lex Luthor');
 
  print( superman );
  print( superman.valentia );
  print( luthor );
  print( superman.maldad );
}

//la clase abstracta
abstract class Personaje {
  String? poder;
  String nombre;
  
  Personaje( this.nombre ); //constructor de "Personaje"
  
  //override sirve para sobreescribir
  @override
  String toString() {
    return '$nombre - $poder';
  }
  
}


class Heroe extends Personaje {
 
   int valentia = 100;
  // los dos puntos ":" significa que se va a ejecutar al momento de la inicializacion de mi clase
                           //con "super", se manda a llamar al constructor de la clase en la cual se extiende "super"
                            //en este caso, estamos apuntando al constructor de "Personaje"
   Heroe( String nombre ): super( nombre );
  
}

class Villano extends Personaje {
  
  int maldad = 50;
  
  Villano( String nombre ): super( nombre );
}

//Los getters y setters son cosas que están internas a una clase
//Un getter es un metodo que luce como un metodo pero se llama como una propiedad
//Un setter es el procedimiento en el cual nosotros podemos establecerle el valor de la propiedad 


import 'dart:math' as math;

void main() {
  
  final cuadrado = new Cuadrado( 2 );
  
  cuadrado.area = 100;
  
  print( 'area: ${ cuadrado.calculaArea() }' );
  
  print( 'lado: ${ cuadrado.lado }' );
  
  //mando a llamar el get como una propiedad:
  print( 'area get: ${ cuadrado.area }' );
  
  
}


class Cuadrado {
  
  double lado;  // lado * lado
   
  //declaro el get como un metodo
  double get area {
    return this.lado * this.lado;
  }
  
  set area( double valor ) {
    this.lado = math.sqrt(valor);
  }
  
  
  
  Cuadrado( double lado ):      //todo esto es lo mismo que:
    this.lado = lado;         //Cuadrado(this.lado);
  
  double calculaArea() {
    return this.lado * this.lado;
  }
}

//nota: Los tipos booleanos soportan valores de verdadero y falso o/y (null)

void main() {
  
  bool isActive = true;
  
  if ( isActive ) { //valor del isActive
    print( 'Está activo' );
  } else {
    print( 'No está activo' );
  }
  
  if ( !isActive ) { // ! = negacion del valor del isActive
    print( 'NO Está activo' );
  } else {
    print( 'Está activo' );
  }
  
  //-----------------------------------
   bool? isActive1 = null; //para asignarle el valor null, se le debe de poner un "?" despues de la definicion del tipo 
  
  if ( isActive1 == null ) { //y ademas se le debe de poner == null en su condicion para que no de error
    print( 'isActive es null' );
  } else {
    print( 'No es null' );
  }
  
  
}

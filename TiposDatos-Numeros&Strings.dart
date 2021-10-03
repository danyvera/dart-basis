void main()  {
  
  // ------------------STRINGS-----------------------------------
      //1ra forma de inicializar la variable: con "var", la cual detecta por si sola que la variable es de tipo string.
      var nombre1 = 'Tony';
      var apellido1 = 'Stark';
      // una vez inicializada la variable, si queremos podemos cambiar su valor: 
      nombre1 = 'Peter';
      //2da forma de inicializar la variable -especialmente- de tipo String: con "String"
      String nombre2 = 'Tony';
      String apellido2 = 'Stark';
      //3ra forma de inicializar la variable: con "final", la cual dice que el valor con el que inicializas la variable será su valor final, es decir ya no se puede modificar el valor de la variable despues de haberla inicializado
      final nombre3 = 'Tony';
      final apellido3 = 'Stark';
      //4ta forma de inicializar la variable-especialmente- de tipo String: con "final" y "String" combinados
      final String nombre = 'Tony';
      final String apellido = 'Stark';
      //5ta forma de inicializar la variable: como una constante con "const"
      /*NOTA: Diferencia entre "final" y "const" en Dart:
      * Una constante significa que su valor nunca va a cambiar en tiempo de compilacion. Es decir, aunque yo quisiera cambiarla, no voy a poder
      * En cambio, "final" se mantiene igual en el momento de su primera asignacion. Es decir, yo puedo definirla y en el programa asignarle el valor y es valido
      */

      // para imprimir 2 variables en una sola linea, se concatenan:
      print('$nombre $apellido'); //nota: el espacio entre el nombre y el apellido tambien se va a imprimir 
  
  
  // ------------------NUMBERS-----------------------------------
      //Existen 2 tipos: int y double
      int empleados = 10;
      double salario = 1856.25;

      print( empleados );
      print( salario );

}

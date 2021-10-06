//El Asyn y el Await trabajan directamente con futures

//la palabra reservada Async SIGNIFICA que la funcion retornará un tipo future
void main() async {
  
  print('Antes de la petición');
  
            //el await solamente puede ser utilizado si nos encontramos dentro de una funcion asincrona (async), entonces volvimos al main una funcion asincrona
  final data = await httpGet('https://api.nasa.com/aliens');
  
  print( data );
  
//   final nombre = await getNombre( '10' );
//   print( nombre );
//    getNombre( '10' ).then( print );
  
  
  print('Fin del programa');
    
}


Future<String> getNombre( String id ) async {
  return '$id - Fernando';
} 


Future<String> httpGet( String url ) {
  return Future.delayed( //el tipo de retorno es un tipo future
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}

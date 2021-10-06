//las Futures en dart son lo mismo que las Tasks en C# o las Promises en JavaScript
//entonces, pues las Futures no son mas que una tarea asincrona. Es decir, algo que se va a ejecutar a diferente tiempo
//es decir, nosotros hacemos una peticion a un servicio y estamos esperando la respuesta. Cuando ya tenemos la respuesta, seguimos ejecutando cierta parte del codigo, 
//  pero no bloqueamos la ejecucion de lo demas

//el future es algo que ya viene en dart, no hay que importar nada

//la aplicacion se sigue ejecutando mientras el future se resuelve

void main() {
  
  print('Antes de la petición');
  
  //mando a llamar al future. 
  httpGet('https://api.nasa.com/aliens')
     .then( (data) { //el ".then" es lo que se va a ejecutar despues de que el future se resuelva
       //la "data" es lo que devuelve el future
        print( data.toUpperCase() );
       
     });
  
  
  print('Fin del programa');
    
}

//el future:
Future<String> httpGet( String url ) {
  return Future.delayed( //"delayed" es un metodo estatito que tienen los futures, el cual permite hacer la tarea asincrona en tanta cantidad de tiempo 
    //duration es el metodo que permite establecer el tiempo en el que se ejecuta la tarea asincrona
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}

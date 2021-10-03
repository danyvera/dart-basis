//el mapa sirve para darle ciertas propiedades a un objeto

void main() {
  
//   Map persona = {
//     'nombre': 'Fernando',
//     'edad': 35,
//     'soltero': false,
        //lo siguiente si es permitido en Dart:
//     true: false,
//     1: 100,
//     2: 500
//   };
  
  //Map<tipo de dato de la llave, tipo de dato de los valores de las llaves> nombre del objeto 
  Map<String, dynamic> persona = {
    'nombre': 'Fernando',
    'edad': 35,
    'soltero': false,
  };
  
  //le podemos agregar una nueva propiedad al mapa del objeto de la siguiente manera:
  persona.addAll({ 'segundoNombre': 'Juan' });
  persona.addAll({ 3: 'Mexicano' });
  
  //para imprimir todas las propiedades del mapa imprimiendo el objeto:
  print( persona );
  //para imprimir solo la propiedad "edad" del objeto:
  print( persona['edad'] );
  
  //para imprimir solo la propiedad "2" del objeto:
  print( persona[2] ); //a esta propiedad le habiamos dado el valor "500" (2:500) , por lo tanto imprimira 500
}

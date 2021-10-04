void main(){
  
  //mapa con las propiedades de nuestro objeto:
  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'Dinero'
  };
                                                      // ! = significa que le digo a dart "confia en mi", estoy segura de que este campo de nombre nunca va a ser nulo, entonces confia y no me mandes un error
//   final ironman = new Heroe( nombre: rawJson['nombre']!, poder: rawJson['poder']! );
  
  //creamos una instancia ironman para poderle mandar los parametros del mapa rawJson al constructor fromJson
   final ironman = Heroe.fromJson( rawJson );
  
  print(ironman);
  
//   final wolverine = new Heroe(nombre:'Logan', poder: 'Regeneración');
//   print( wolverine );
  
}


class Heroe {
  //esto le dice que siempre que se cree una instancia, se va a necesitar un nombre y un poder OBLIGATORIAMENTE
  String nombre;
  String poder;
  
  /* Si los campos nombnre y poder pudieran ser nulos, los inicializamos de la siguiente manera: con el signo ?
  * String? nombre;
  * String? poder;
  */
  
  Heroe({ 
    required this.nombre, 
    required this.poder 
  });
  
  // si declaramos asi este constructor nos arrojaria un error el programa, ya que al declararlo asi, se ejecuta despues de que la instancia ya se ha creado, es decir, llega muy tarde
  /* Heroe.fromJson( Map<String, String> json  ){
  *  this.nombre = json['nombre']!,
  *  this.poder  = json['poder'] ?? 'No tiene poder';
  *}
  */
  //pero si lo declaramos de la siguiente manera, no nos mostrara error: 
  //este constructor fromJson/fromMap va a recibir un mapa 
  Heroe.fromJson( Map<String, String> json  ): //los dos puntos ":" lo que dice es que este constructor se va a ejecutar al momento en que se esté creando la instancia
    //el nombre y el poder, como las marcamos como obligatorias, deben estar añadidas aqui en este constructor
    this.nombre = json['nombre']!, //el signo " ! " le dice a dart que nos crea que no hay posibilidad de que sea nulo, es decir, siempre va traer un valor
    this.poder  = json['poder'] ?? 'No tiene poder'; //el signo "??" le dice a dar que en caso de que el argumento poder sea nulo, que entonces le ponga el valor de "No tiene poder"
  
  
  
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${ this.poder }';
  }
}

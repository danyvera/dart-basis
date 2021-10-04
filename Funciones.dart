void main() {
  
  final nombre = 'Fernando';
  
  saludar( nombre, 'Greetings' );
  
  saludar2( nombre: nombre, mensaje: 'Greetings' );
  
}

                           //el argumento "mensaje" es argumento opcional: si no manda ningun valor, entonces el valor del argumento mensaje será "Hi"
void saludar( String nombre, [ String mensaje = 'Hi' ]) {
  print('$mensaje $nombre');
}


void saludar2({ 
  //para obligar a que el nombre sea siempre requerido: usamos la palabra "required"
  required String nombre, 
  String mensaje = 'No message',
 }) {
  print('$mensaje $nombre');
  print('Hola Mundo');
}

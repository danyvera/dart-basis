//NOTA: en otros lenguajes se conocen como "ARREGLOS", pues es la coleccion de elementos que tienen algun tipo de dato en comun
// un metodo estatico es una funcion que puedo llamar sin crear una instancia de la misma. Estos metodos se pueden aplicar a objetos

void main() {
  
  //inicializando una lista vacia:
  List numeros1 = []; //esta lista aceptara elementos de cualquier tipo porque no estamos especificando.
  numeros.add(11); //agregamos un elemento int a la lista
  numeros.add('Fernando'); //agregamos un elemento string a la lista
  //tambien podriamos inicializarlos de otrar maneras: var numeros1, final numeros1, const numeros1
  
  //ahora, si quisieramos inicializar la lista de manera que solamente acepte elementos de tipo int, se debe poner <int>
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  //para añadir un numero a la lista: 
  numeros.add(11); // utilizamos el metodo "add" y el valor que se le manda es el que queremos añadir a la lista (en este caso el numero 11)
  //para imprimir toda la lista:
  print( numeros );
  //para solo el numero en el index 0 de la lista:
   print( numeros[0] ); //en este caso imprimiria el numero "1", el cual esta en el index 0 de la lista
  
  //el metodo estatico llamado "generate" genera x elementos a la lista, y espera 2 argumentos posicionales
  final masNumeros = List.generate(100, (int index) => index ); //al ponerle el valor de "index", retornara una lista de 100 elementos: con los valores del 0 al 99 de acuerdo al index que tengan en la lista
 
  print(masNumeros);
}

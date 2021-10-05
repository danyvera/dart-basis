//Una clase abstracta nos sirve simplemente para obligar a otras clases a que implementen o que puedan aceptar las caracteristicas de esa clase.

void main() {
  
  final perro = new Perro();
  final gato = new Gato();
  
  sonidoAnimal( perro );
  sonidoAnimal( gato );
}

void sonidoAnimal( Animal animal ) {
  animal.emitirSonido();
}

//Las clases abstractas sirven para que puedan otras clases implementar lo que yo digo en mi clase abstracta
//Es decir, puede que yo tenga alguna funcion que requiera una clase que extienda o que implemente ciertas cosas de una clase abstracta
abstract class Animal {
  
  int? patas;
  void emitirSonido();
  
}

class Perro implements Animal {
  
  int? patas;
  
  void emitirSonido() {
    print('Guauuuuuuuu');
  }
  
}

class Gato implements Animal {
  
  int? patas;
  int? cola;
  
  void emitirSonido() => print('Miauuuuuuuu');
}

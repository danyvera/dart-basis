// What are mixins? : https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
//Una forma de ver el mixin es como cuando nosotros estemos trabajando con alguna clase
//podemos implementar ciertas caracteristicas independientes de una clase

abstract class Animal { }

abstract class Mamifero extends Animal { }
abstract class Ave extends Animal { }
abstract class Pez extends Animal { }

abstract class Volador {
  void volar() => print('estoy volando');
}

abstract class Caminante {
  void caminar() => print('estoy caminando');
}

abstract class Nadador {
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadador{}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}


void main() {
  
  
//   final flipper = new Delfin();
//   flipper.nadar();
  
//   final batman = new Murcielago();
//   batman.caminar();
//   batman.volar();

}

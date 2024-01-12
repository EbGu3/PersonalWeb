void main(List<String> arguments) {
  final delfin = Delfin();
  delfin.nadar();

  final caballitoMar = CaballitoMar();
  caballitoMar.nadar();

  final pato = Pato();
  pato.caminar();
  pato.volar();
  pato.nadar();
}

//  Las clases padres no deben de poder ser heredas
abstract class Animal {}

abstract class Pescado extends Animal {}

abstract class Ave extends Animal {}

abstract class Mamifero extends Animal {}

class Delfin extends Pescado with NadaMixinin {}

class CaballitoMar extends Pescado with NadaMixinin {}

class Gato extends Mamifero {}

class Leon extends Mamifero with CaminandoMixinin, NadaMixinin {}

class Pato extends Ave with VolarMixinin, CaminandoMixinin, NadaMixinin {}

class Loro extends Ave {}

//  Todo, aplicando mixin y especifiando donde solo se pueden usar
mixin CaminandoMixinin on Animal {
  void caminar() {
    print('$runtimeType Caminando');
  }
}

mixin NadaMixinin on Animal {
  void nadar() {
    print('$runtimeType nadando');
  }
}

mixin VolarMixinin on Animal {
  void volar() {
    print('$runtimeType volando');
  }
}

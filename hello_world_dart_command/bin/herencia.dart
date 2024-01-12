void main(List<String> arguments) {
  var perro = Perro(nombreDog: "", edadDog: 0);
  perro.ladrar();

  var fish = Pescado(nombrePescado: "", edadPescado: 0);
  fish.nadar();
}

//  Las clases padres no deben de poder ser heredas
abstract class Animal {
  final String nombre;
  final int edad;

  const Animal({
    required this.nombre,
    required this.edad,
  });

  void comer();
}

class Perro extends Animal {
  const Perro({
    required String nombreDog,
    required edadDog,
  }) : super(
          nombre: nombreDog,
          edad: edadDog,
        ); //Llamar al constructor de la clase padre

  void ladrar() {
    print("Grrr Guauuuu 🐶");
  }

  @override
  void comer() {
    print('Gau comida 🐶🥓');
  }
}

class Pescado extends Animal {
  final lago = 'Amatitlan';
  const Pescado({
    required String nombrePescado,
    required edadPescado,
  }) : super(
          nombre: nombrePescado,
          edad: edadPescado,
        );

  void nadar() {
    print("glugluglu 🐟");
  }

  @override
  void comer() {
    print("gluglu 🐟🌿");
  }
}

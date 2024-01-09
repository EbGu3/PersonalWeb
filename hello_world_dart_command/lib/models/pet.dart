//  Todo: Inicializar variables privadas
//  Metodo 1
class Pet {
  late String _nombre;
  late int _edad; // Colocar _ antes para que sea privado

  Pet({required String nombre, required int edad}) {
    _nombre = nombre;
    _edad = edad;
  }

  void printPet() {
    print('Hola soy $_nombre y tengo $_edad años');
  }
}

//  TODO: Inicializar variables privadas
//  Metodo 2
class Car {
  String _modelo;
  String _color;

  Car({required String modelo, required String color})
      : _modelo = modelo,
        _color = color;

  void printCar() {
    print('Tu carro es un modelo $_modelo y color: $_color');
  }
}

//  TODO: getters y setters
class Persona {
  String _nombre;
  int _edad;

  Persona({required String nombre, required int edad})
      : _nombre = nombre,
        _edad = edad;

  String get nombre {
    return _nombre;
  }

  int get edad {
    return _edad;
  }

  set nombre(String nombre) {
    _nombre = nombre;
  }

  void updateEdad(int edad) {
    _edad = edad;
  }
}

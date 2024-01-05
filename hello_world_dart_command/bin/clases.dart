void main(List<String> arguments) {
  // Solo se puede definir una vez el constructor de una clase
  Pet instanciaPet = Pet("", 0);
  print("Son iguales = ${instanciaPet.verificarSiExiste("Luna")}");

  Carro instanciaCarro1 = Carro("BMW", "Azul");
  Carro instanciaCarro2 = Carro("BMW", "Azul");
  print("Carros iguales = ${instanciaCarro1 == instanciaCarro2}");
  print(
      "Carros iguales = ${instanciaCarro1.hashCode == instanciaCarro2.hashCode}");
}

class Pet {
  String name;
  int edad;

  /// Constructor
  Pet(this.name, this.edad);

  /// Verificar si son iguales con el hashCode
  /// Valido solo de tipo datos primitivos funciona
  /// Si es una instancia, son diferentes los hashCode, aunque las propiedes iguales
  bool verificarSiExiste(String nombrePet) {
    String perroExistente = "Luna";
    return nombrePet.hashCode == perroExistente.hashCode;
  }
}

/// Sobre escribir operador de igualdad
/// para verificar si son la misma instancia
/// con el operador hashCode
class Carro {
  String modelo;
  String color;

  Carro(this.modelo, this.color);

  // @override => indica que se esta sobre escribiendo el comportamiento de algo
  @override
  bool operator ==(Object other) {
    // Si, no son del mismo tipo
    if (other is! Carro) {
      return false;
    }

    return other.modelo == modelo && other.color == color;
  }

  @override
  int get hashCode {
    return modelo.hashCode ^ color.hashCode;
  }
}

/// Definir los atributos, y indicar
/// que los atributos se inicializaran despues
class Casa {
  late String direccion;
  late String zona;
}

/// Clase con constructor de tipo nombre
class Persona {
  String nombre;
  String apellido;
  int edad;

  Persona({required this.nombre, required this.apellido, required this.edad});
}

class Doctor {
  String nombre;
  String direccion;

  Doctor({required this.nombre, required this.direccion}) {
    printInformacionDoctor();
  }

  void printInformacionDoctor() {
    print('Nombre Doctor = $nombre, Direccion Clinica = $direccion');
  }
}

void main(List<String> arguments) {
  //  TODO: Uso de listas
  List<int> numbers = [1, 2, 3];

  numbers.add(4);

  print(numbers);

  // Tipo dinamico
  var dinamicList = [];
  dinamicList.add("-");
  dinamicList.add(1);
  dinamicList.add(false);
  print(dinamicList);

  // Tipo Especifico
  var numbersList = <int>[];
  numbersList.add(5);
  numbersList.add(6);
  numbersList.add(7);
  numbersList.addAll(numbers);
  print('Lista Orginal: $numbersList');

  // Operaciones list
  numbersList.removeAt(1);
  numbersList.remove(4);
  numbersList.removeWhere((numero) => numero == 3);

  print('Lista Modificada: $numbersList');

  // Operacions List sobre Persona
  var instanciaPersona = Persona();
  instanciaPersona.setOneName("Ivanna");
  instanciaPersona
      .setManyNames(["Eber", "Daniel", "Jisca", "Jose", "Josue", "Emily"]);
  instanciaPersona.removeName("Josue");
  instanciaPersona.removerNameIndex(4);
  instanciaPersona.printListNames();

  print(instanciaPersona.getNamesWithLetterI());
  print(instanciaPersona.getIndexPersonInList("Jisca"));
  print(instanciaPersona.getLastNameByLetterE());
}

class Persona {
  List<String> nombresList = [];

  void setOneName(String nombre) {
    nombresList.add(nombre);
  }

  void setManyNames(List<String> nombres) {
    nombresList.addAll(nombres);
  }

  void removeName(String nombre) {
    nombresList.removeWhere((nombreItem) => nombreItem == nombre);
  }

  void removerNameIndex(int posicionNombre) {
    nombresList.removeAt(posicionNombre);
  }

  String getLastNameByLetterE() {
    return nombresList.lastWhere((nombreItem) => nombreItem.startsWith("E"),
        orElse: () => "Not Found Name");
  }

  int getIndexPersonInList(String nombre) {
    return nombresList.indexWhere((nombreItem) => nombreItem == nombre);
  }

  List<String> getNamesWithLetterI() {
    return nombresList
        .where((nombreItem) => nombreItem.startsWith("I"))
        .toList();
  }

  void printListNames() {
    print(nombresList);
  }
}

void main(List<String> arguments) {
  print("dev mode");

  /*
    Tipo de datos
      - Primitivos:
        # int
        # double
        # bool
        # String

      - Dinamicos:
        # dynamic

      - Inmutables
        # finaly: asignados en tipo de ejecucion
        # contat: asignados antes de compilar

  */
  int ageOfPet = 10;
  double priceOfPet = 100.99;
  bool enable = false;
  String namePet = 'Meteoro';

  var lastNamePet = 'Sun';
  var visitPet = 2.0;

  dynamic valorDinamico = "Eber :v";
  print(valorDinamico.runtimeType);
  valorDinamico = 1;
  valorDinamico = false;
  print(valorDinamico.runtimeType);

  Object obj;

  final opTxt = OperacionesTexto();
  print(opTxt.concatenacion("hola", "mundo"));
  print(opTxt.concatenacionNumero("hola", 27));
  print(opTxt.concatenacionDinamico("hola", false));
  print(opTxt.longitudCadena("hola mundo"));
}

class OperacionesTexto {
  String concatenacion(String txt1, String txt2) {
    return txt1 + txt2;
  }

  String concatenacionNumero(String txt1, int num) {
    return txt1 + num.toString();
  }

  String concatenacionDinamico(String txt, dynamic value) {
    return 'Texto: $txt - Dinamico: $value';
  }

  String longitudCadena(String cadena) {
    return '${cadena.length}';
  }

  String getFechaActual() {
    return '${DateTime.now()}';
  }
}

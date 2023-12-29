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
        # final: asignados en tipo de ejecucion
        # const: asignados antes de compilar

  */
  final String apiId = ""; // Valor que se obtiene en tipo de ejecucion
  const String apiKey = "My_Api_Key"; // Valor que ya sabemos de antemano
  const lulu = Pet();
  final fresita = Car();
}

class Pet {
  //TODO: Constructor, de tipo const para poder ser un tipo de dato inmutable
  const Pet();
}

class Car {
  Car();
}

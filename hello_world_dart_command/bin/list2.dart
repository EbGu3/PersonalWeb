void main(List<String> arguments) {
  List<int> numeros = [0, 1, 2, 3];

  // Agregar mas numeros a la lista

  // Forma1: Menos Eficiente
  numeros.addAll([4, 5, 6, 7]);

  // Forma 2: Mas eficiente (Destructuracion)
  numeros = [...numeros, 8, 9, 10];
  print(numeros);

  // -----------------------------------------
  Map<String, dynamic> json = {"nombre": "Ivanna", "apellido": "Guerra"};

  // Agregar mas atributos al json

  //  Forma1: Menos eficiente
  json["pais"] = "Guatemala";
  json["activo"] = true;

  //  Forma2: Mas eficiente
  json = {...json, "edad": 18, "numero": 01010101};
  print(json);
}

void main(List<String> arguments) {
  // INFO: Ejemplo IF
  var nombre = "Ivanna:";
  if (nombre == "Ivanna") {
    print("Es la mejor");
  } else {
    print("bu");
  }

  // INFO: Ejemplo For
  final productos = <int, String>{
    0: "Mackbook Pro 20'",
    1: "IPhone 20",
    2: "Apple Watch"
  };

  for (final producto in productos.entries) {
    print('Key   = ${producto.key}');
    print('Value = ${producto.value}');
  }
}

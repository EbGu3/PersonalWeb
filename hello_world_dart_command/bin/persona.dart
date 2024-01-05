void main(List<String> arguments) {
  final fechaCumpleanyos = DateTime(1998, 8, 27);
  print(
      'Tu fecha cumpleaños es: ${getEdad(fechaNacimiento: fechaCumpleanyos)}');
}

// TODO: Definir una funcion, de parametros nombres
int getEdad({required DateTime fechaNacimiento}) {
  final fechaActual = DateTime.now();
  return (fechaActual.difference(fechaNacimiento).inDays / 365).round();
}

import 'package:hello_world_dart_command/models/pet.dart';

void main(List<String> arguments) {
  final persona = Persona(nombre: 'Juan', edad: 20);
  print('Mi papa se llama = ${persona.nombre}');
  print('Su edad no es = ${persona.edad}');
  persona.updateEdad(52);
  print('Su edad es = ${persona.edad}');
  persona.nombre = "Alfredo";
}

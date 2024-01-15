import 'dart:convert';
import 'dart:io';
import 'dart:async';

void main() {
  calcularEdad();
  recorrerLista();
}

void calcularEdad() {
  try {
    final inputUsuario = stdin.readByteSync().toString();
    DateTime cumpleanyos = DateTime.parse(inputUsuario);
  } catch (err, st) {
    print('Edad no calculada');
    print('Error Tipo: ${err.runtimeType}, Mensaje: $err, StackTrace: $st');
  }
}

void recorrerLista() {
  try {
    final listNumbers = [];
    final firtsNumerb = listNumbers[0];
  } on RangeError {
    print('Imprimir error, de tipo rango');
  }
}

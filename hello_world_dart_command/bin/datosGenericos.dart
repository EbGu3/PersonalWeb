import 'dart:io';

import 'package:hello_world_dart_command/models/tuple.dart';

void main(List<String> arguments) {
  print("Ingresa tu email");
  stdout.write(">");
  final emailInput = stdin.readLineSync();
  print(emailInput);
}

Tuple<int, String?> login(String email, String password) {
  if (email == "ivanna@gmail.com" && password == "1234") {
    final token = "token";
    return Tuple(item1: 200, item2: token);
  } else if (email != "ivanna@gmail.com") {
    return Tuple(item1: 400, item2: null);
  }

  return Tuple(item1: 401, item2: null);
}

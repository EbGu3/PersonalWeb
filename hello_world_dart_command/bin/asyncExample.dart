import 'dart:async';

void main(List<String> arguments) async {
  print("hola");
  // final f = sleepError(2);
  // f.then((value) {
  //   print(value);
  // }).onError((error, stackTrace) {
  //   print("Error Mensaje: $error, StackTrace: $stackTrace");
  // });

  //  TODO: Usando async y await
  final respuesta = await sleep(2);
  print(respuesta);
  await sleepVoid(2);

  print("end");
}

//   TODO: Retornar un tipo de dato string
Future<String> sleep(int segundos) {
  return Future.delayed(Duration(seconds: segundos), () {
    return "❌";
  });
}

//  TODO: Retornar un error
Future<String> sleepError(int segundos) {
  return Future.delayed(Duration(seconds: segundos), () {
    throw RangeError("Error de ejemplo");
    return "❌";
  });
}

//  TODO: Retornar cualquier tipo de dato
Future<void> sleepVoid(int segundos) {
  return Future.delayed(Duration(seconds: segundos), () {
    print("Ivanna 🥰");
  });
}

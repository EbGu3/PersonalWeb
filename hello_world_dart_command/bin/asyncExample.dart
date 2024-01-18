void main(List<String> arguments) {
  print("hola");
  final f = sleep(2);
  f.then((value) {
    print(value);
  });
}

Future<String> sleep(int segundos) {
  return Future.delayed(Duration(seconds: segundos), () {
    return "❌";
  });
}

class Menu<E> {
  final String label;
  final List<MenuOpcion> options;

  Menu({
    required this.label,
    required this.options,
  });

  void imprimirPregunta() {
    print(label);
  }

  void imprimirOpciones() {
    for (final opcion in options) {
      print('${opcion.value}: ${opcion.text}');
    }
  }
}

class MenuOpcion<E> {
  final E value;
  final String text;

  MenuOpcion({
    required this.value,
    required this.text,
  });
}

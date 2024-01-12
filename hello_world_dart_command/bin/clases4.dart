class Animal {
  String tipo;
  double peso;
  static int _counter = 0;

  Animal(this.tipo, this.peso);

  static void updateCounter(int counter) {
    _counter = counter;
  }

  static int get counter {
    return _counter;
  }
}

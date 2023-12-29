void main() {
  print("dev mode");
  print(suma(2, 2));

  final calculadora = Calculadora();
  print(calculadora.suma(2, 3));
}

/// Clase, que realiza operaciones matematicas :V
class Calculadora {
  ///Suma de dos numeros enteros
  ///[a] Valor entero numero 1
  ///[b] Valor entero numero 2
  ///```
  ///suma(1, 4) = 5;
  ///```
  int suma(int a, int b) {
    //  Comentario de linea :v
    /* 
        Comentario 
        de 
        bloque 
        v:
    */
    return a + b;
  }
}

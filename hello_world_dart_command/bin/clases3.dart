import 'api_key.dart';
import 'clases4.dart';

void main(List<String> arguments) {
  updateApiKey("probando ando x)");
  print(apiKey);

  Animal.updateCounter(100);
  print(Animal.counter);
}

class Casa {
  _Historial instanciaHistoria = _Historial();

  //  TODO: Definir metodo publico
  void cerrarPuertas() {
    _revisarPuertasAbiertas();
    instanciaHistoria.aumentarCantidadRevisiones();
  }

  //  TODO: Definir metodo privado
  void _revisarPuertasAbiertas() {
    print("No hay puertas abiertas");
  }

  void printHistorial() {
    print('Revisiones de puertas: ${instanciaHistoria.cantidadRevisiones}');
  }
}

//  Clases privadas, usar _ antes del nombre
class _Historial {
  late int cantidadRevisiones;

  _Historial() {
    cantidadRevisiones = 0;
  }

  void aumentarCantidadRevisiones() {
    cantidadRevisiones += 1;
  }
}

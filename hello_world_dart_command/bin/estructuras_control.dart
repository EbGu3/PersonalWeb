import 'dart:collection';

import 'package:test/test.dart';

void main(List<String> arguments) {
  // INFO: Ejemplo IF
  var nombre = "Ivanna:";
  if (nombre == "Ivanna") {
    print("Es la mejor");
  } else {
    print("bu");
  }

  // INFO: Ejemplo For
  final productos = <int, String>{
    0: "Mackbook Pro 20'",
    1: "IPhone 20",
    2: "Apple Watch"
  };

  for (final producto in productos.entries) {
    print('Key   = ${producto.key}');
    print('Value = ${producto.value}');
  }
}

/// Ejemplos de como enviar parametros y como se llamada cada tipo de parametro
class Producto {
  Map<int, String> getProductos() {
    return <int, String>{
      1: "Carne Molinda Sin Grasa",
      2: "Nintendo 64",
      3: "Calculadora Cientifica Marca Best",
      4: "Chocolates Dark 12 Unidades",
      5: "Calcetines para hombre, blancos"
    };
  }

  void printProducto(String nombre) {
    print('Producto = $nombre');
  }

  /// [nombre] => Parametro de nombre, requerido
  /// [precio] => Parametro de nombre, requerido
  void printProductoPrecio({required String nombre, required double precio}) {
    print('Producto = $nombre, Precio = $precio');
  }

  Map<int, String> findProducto({required int id, String? nombre}) {
    try {
      var productos = getProductos();
      if (productos.containsKey(id)) {
        // ?? => es una validacion de null aware
        return <int, String>{id: productos[id] ?? ""};
      }

      if (nombre == null) {
        throw Exception("Producto no encontrado, nombre vacio");
      }

      var productoEncontrado = productos.entries
          .where((productoItem) => productoItem.value == nombre)
          .firstOrNull;

      if (productoEncontrado == null) {
        throw Exception("Producto no encontrado, por nombre");
      }

      return <int, String>{productoEncontrado.key: productoEncontrado.value};
    } catch (e) {
      return <int, String>{-1: e.toString()};
    }
  }

  /// [nombre]      = Producto => Parametro requerido
  /// [precio]      =          => Parametro de nombre, con valor default
  /// [disponible]  =          => Parametro de nombre, con valor default
  /// [descripcion] =          => Parametro de nombre, opcional
  void printProductoInfo(
    String nombre, {
    double precio = 10.10,
    bool disponible = false,
    String? descripcion,
  }) {
    print(
        'Producto = $nombre, Precio = $precio, Disponibilidad = $disponible, Descripcion = $disponible ');
  }

  /// [precio] => Parametro requerido
  /// [nombre] => Parametro opcional
  void printPrecio(double precio, [String nombre = ""]) {
    var nombreProducto = nombre.isNotEmpty ? 'Producto = $nombre' : '';

    print('Precio = $precio $nombreProducto');
  }
}

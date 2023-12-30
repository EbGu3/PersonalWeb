void main(List<String> arguments) {
  Persona instaciaPersona = Persona();
  instaciaPersona.agregarAtributo("edad", "10");
  instaciaPersona.agregarAtributo("nombre", "Ivanna");
  print('Atributo Eliminado = ${instaciaPersona.removerAtributo("estado")}');
  print('Atributo Eliminado = ${instaciaPersona.removerAtributo("edad")}');

  Producto intanciaProducto = Producto();
  intanciaProducto.agregarProducto(2, 'IPad Mini');
  intanciaProducto.agregarProducto(3, 'Apple Watch');
  intanciaProducto.agregarProducto(4, 'Samsung S23');
  intanciaProducto.removerProducto(1, '');
  intanciaProducto.removerProducto(0, 'Samsung S23');
  intanciaProducto.imprimirProductos();

  print(intanciaProducto.obtenerLlavesProducto());
  print(intanciaProducto.obtenerProductos());

  Usuario instanciaUsuario = Usuario();
  instanciaUsuario.imprimirPais();
}

/// Ejemplo: 1
class Persona {
  Map<String, String> atributosPersona = {};

  void agregarAtributo(String atributoId, String valor) {
    atributosPersona[atributoId] = valor;
  }

  /// Remueve el atributo y retorna si el atributo fue removido
  bool removerAtributo(String atributoId) {
    return atributosPersona.remove(atributoId) != null;
  }

  void removerTodosAtributos() {
    atributosPersona.clear();
  }
}

/// Ejemplo: 2
class Producto {
  var productos = <int, String>{1: "Mackbook Pro 15'"};

  void imprimirProductos() {
    print(productos);
  }

  /// Todo, agregar el producto si no existe
  /// [llaveProducto] llave que busca si ya existe
  /// [valorProducto] valor que agrega si la llave no existe
  void agregarProducto(int llaveProducto, String valorProducto) {
    productos.putIfAbsent(llaveProducto, () {
      return valorProducto;
    });
  }

  void removerProducto(int llaveProducto, String valorProducto) {
    productos.removeWhere((keyProduc, valueProduc) =>
        keyProduc == llaveProducto || valueProduc == valorProducto);
  }

  List<int> obtenerLlavesProducto() {
    return productos.keys.toList();
  }

  List<String> obtenerProductos() {
    return productos.values.toList();
  }
}

/// Ejemplo: 3
class Usuario {
  Map<String, Object> atributosUsuario = {};

  Usuario() {
    atributosUsuario = {
      "nombre": "Ivanna",
      "edad": 18,
      "estado": false,
      "numeroFavorito": 10.12,
      "direccion": {
        "pais": "Guatemala",
        "zona": 0,
        "departamento": "Guatemala",
        "codigoPais": 502
      },
      "pets": ["Joselino", "Rodolfino", "Sun"]
    };
  }

  void imprimirPais() {
    final direccion = atributosUsuario['direccion'];
    final pais = (direccion as Map<String, Object>)['pais'];
    print(pais);
  }
}

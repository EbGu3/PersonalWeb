void main(List<String> arguments) {
  for (final s in EstadoEntrega.values) {
    print(s);
    print(s.index);
    print(s.name); // Imprime el nombre del enum
  }
}

// Datos inmutables,
// Datos que no se pueden modificar
enum EstadoEntrega {
  created,
  ready,
  onTheWay,
  delivered,
}


class Producto {
  // 1. DECLARACIÓN DE TIPOS DE DATOS
  final int id;
  final String nombre;
  final String categoria;
  final double precio;
  final int stock;
  final bool disponible;

  // 2. CONSTRUCTOR
  const Producto({
    required this.id,
    required this.nombre,
    required this.categoria,
    required this.precio,
    required this.stock,
    required this.disponible,
  });
}
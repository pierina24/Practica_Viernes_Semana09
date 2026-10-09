
import 'package:flutter/material.dart';
import 'data/productos_estaticos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Listado de productos',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF123C69),
        ),
      ),
      home: const ProductosPage(),
    );
  }
}

class ProductosPage extends StatelessWidget {
  const ProductosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FB),

      appBar: AppBar(
        title: const Text('Listado de productos'),
        backgroundColor: const Color(0xFF123C69),
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(12),

        // 4. MAPEO DE LOS OBJETOS AL FRONTEND
        children: productos.map<Widget>((producto) {
          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            elevation: 2,

            child: ListTile(
              contentPadding: const EdgeInsets.all(12),

              leading: CircleAvatar(
                backgroundColor: const Color(0xFFE1EAF5),
                child: Text(
                  '${producto.id}',
                  style: const TextStyle(
                    color: Color(0xFF123C69),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              title: Text(
                producto.nombre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  'Categoría: ${producto.categoria}\n'
                  'Stock: ${producto.stock}\n'
                  'Estado: ${producto.disponible ? "Disponible" : "Agotado"}',
                ),
              ),

              isThreeLine: true,

              trailing: Text(
                'S/ ${producto.precio.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Color(0xFF123C69),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          );
        }).toList(),
      ),

      bottomNavigationBar: Container(
        color: const Color(0xFF123C69),
        padding: const EdgeInsets.all(16),
        child: Text(
          'Total de productos: ${productos.length}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
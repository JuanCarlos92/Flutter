import 'package:flutter/material.dart';

// Definición de un widget con estado (StatefulWidget) llamado Contador.
class Contador extends StatefulWidget {
  const Contador({super.key}); // Constructor con clave opcional.

  @override
  State<Contador> createState() => _ContadorState(); // Crea el estado asociado a este widget.
}

// Estado del widget Contador.
class _ContadorState extends State<Contador> {
  int _count = 25; // Variable privada para almacenar el valor del contador.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de navegación superior con título y color de fondo azul.
      appBar: AppBar(title: Text("home"), backgroundColor: Colors.blue),
      
      // Cuerpo del Scaffold, centrado con el valor del contador mostrado en pantalla.
      body: Center(
        child: Text('Contador: $_count', style: TextStyle(fontSize: 25)),
      ),

      // Botón flotante para incrementar el contador.
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _incrementar(); // Llama a la función para incrementar el contador.
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add), // Ícono de suma (+).
      ),
    );
  }

  // Método privado para incrementar el contador y actualizar la interfaz.
  void _incrementar() {
    setState(() {
      _count++;
    });
  }
}

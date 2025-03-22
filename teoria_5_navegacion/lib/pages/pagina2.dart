import 'package:flutter/material.dart';

// Definición de un StatefulWidget para la Página 2.
class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina2State(); // Error corregido: debía llamarse _Pagina2State.
}

// Estado de la Página 2.
class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Página 2"),
      ), // Texto centrado en la pantalla.
      // Botón flotante que al presionarlo regresa a la Página 1.
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => {Navigator.pop(context)}, // Regresa a la página anterior.
      ),
    );
  }
}

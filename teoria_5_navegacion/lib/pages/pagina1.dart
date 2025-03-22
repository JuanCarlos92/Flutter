import 'package:flutter/material.dart';

// Definición de un StatefulWidget para la Página 1.
class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});

  @override
  State<Pagina1> createState() => _Pagina1State();
}

// Estado de la Página 1.
class _Pagina1State extends State<Pagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Página 1"),
      ), // Texto centrado en la pantalla.
      // Botón flotante que al presionarlo navega a la Página 2.
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => {
              Navigator.pushNamed(context, "pagina2"),
            }, // Navega a Página 2.
        child: Icon(Icons.nat), // Ícono del botón.
      ),
    );
  }
}

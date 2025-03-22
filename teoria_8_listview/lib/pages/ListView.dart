import 'package:flutter/material.dart';

// Página que muestra una lista de contenedores con diferentes colores.
class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Color de fondo del AppBar.
        title: Text("ListView"), // Título del AppBar.
      ),
      body: ListView(
        // Lista vertical de elementos desplazables.
        children: <Widget>[
          Container(
            height: 60, // Altura del contenedor.
            color: Colors.black, // Color de fondo negro.
          ),
          Container(
            height: 60,
            color: Colors.blue, // Color de fondo azul.
          ),
          Container(
            height: 60,
            color: Colors.yellow, // Color de fondo amarillo.
          ),
          Container(
            height: 120, // Este contenedor es más grande que los anteriores.
            color: Colors.red, // Color de fondo rojo.
          ),
        ],
      ),
    );
  }
}

import 'dart:math'; // Importación para generar valores aleatorios
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Variables para gestionar la animación
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  // Variable para gestionar la opacidad
  double opacityLevel = 1.0;

  // Método que cambia los valores de la animación de forma aleatoria
  void cambiarOpacidad() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble(); // Ancho aleatorio
      _height = random.nextInt(300).toDouble(); // Alto aleatorio
      _color = Color.fromRGBO(
        random.nextInt(256), // Color aleatorio en R
        random.nextInt(256), // Color aleatorio en G
        random.nextInt(256), // Color aleatorio en B
        1, // Opacidad fija en 1
      );
      _borderRadius = BorderRadius.circular(
        random.nextInt(100).toDouble(),
      ); // Bordes redondeados aleatorios

      // Alterna la opacidad entre 0 y 1
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Color de fondo de la AppBar
        title: Text("Animaciones"), // Título en la barra de la aplicación
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel, // Controla la opacidad del contenedor
          duration: const Duration(
            seconds: 1,
          ), // Duración de la animación de opacidad
          child: AnimatedContainer(
            duration: const Duration(
              seconds: 1,
            ), // Duración de la animación del contenedor
            curve: Curves.bounceOut, // Curva de animación
            width: _width, // Ancho dinámico
            height: _height, // Alto dinámico
            decoration: BoxDecoration(
              color: _color, // Color de fondo dinámico
              borderRadius: _borderRadius, // Bordes redondeados dinámicos
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cambiarOpacidad(); // Activa la animación al presionar el botón
        },
        child: Icon(Icons.play_arrow), // Ícono del botón flotante
      ),
    );
  }
}

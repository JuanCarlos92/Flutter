import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double targetValue = 24.0; // Tamaño inicial del icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Color de fondo de la barra superior
        title: Text("Animaciones"), // Título de la aplicación
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(
            begin: 0,
            end: targetValue,
          ), // Definición de la animación
          duration: const Duration(seconds: 2), // Duración de la animación
          builder: (BuildContext context, double size, Widget? child) {
            return IconButton(
              iconSize: size, // Tamaño dinámico del icono
              onPressed:
                  () => {
                    setState(() {
                      // Alternar entre dos tamaños al presionar el botón
                      targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                    }),
                  },
              icon: child!, // Ícono del botón
            );
          },
          child: const Icon(Icons.aspect_ratio), // Ícono base
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Botón flotante sin funcionalidad asignada
        child: Icon(Icons.play_arrow), // Ícono del botón flotante
      ),
    );
  }
}

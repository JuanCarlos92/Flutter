import 'package:animaciones/pages/home_page.dart'; // Importación de una página que no se usa en este código
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Inicia la aplicación Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animaciones", // Título de la aplicación
      home: Home(), // Página de inicio
    );
  }
}

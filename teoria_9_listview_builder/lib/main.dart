import 'package:flutter/material.dart';
import 'package:teoria_9_listview_builder/pages/ListView.dart';

void main() {
  runApp(MyApp()); // Función principal que ejecuta la aplicación Flutter.
}

// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la marca de "debug" en la esquina superior derecha
      title: "ListView", // Título de la aplicación
      home: ListViewPage(), // Establece la pantalla principal de la app
    );
  }
}
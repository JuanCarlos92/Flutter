import 'package:flutter/material.dart';
import 'package:teoria_6_widget_container/pages/ContainerPage.dart'; // Importa la página principal.

void main() {
  runApp(MyApp()); // Inicia la aplicación.
}

// Clase principal de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta "Debug" en la app.
      title: "Container", // Título de la aplicación.
      home: ContainerPage(), // Define la pantalla principal como `ContainerPage`.
    );
  }
}

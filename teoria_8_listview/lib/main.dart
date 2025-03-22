import 'package:flutter/material.dart';
import 'package:teoria_8_listview/pages/ListView.dart'; // Importa la pantalla `ListViewPage`.

void main() {
  runApp(MyApp()); // Inicia la aplicación.
}

// Clase principal de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la etiqueta "Debug".
      title: "ListView", // Título de la aplicación.
      home: ListViewPage(), // Define `ListViewPage` como la pantalla principal.
    );
  }
}

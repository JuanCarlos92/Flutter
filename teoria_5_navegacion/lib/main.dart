import 'package:flutter/material.dart';
import 'package:teoria_5_navegacion/pages/pagina1.dart'; // Importa la pantalla 1.
import 'package:teoria_5_navegacion/pages/pagina2.dart'; // Importa la pantalla 2.

void main(List<String> args) {
  runApp(MyApp()); // Ejecuta la aplicación.
}

// Clase principal de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navegación", // Título de la aplicación.
      initialRoute: "pagina1", // Define la ruta inicial al iniciar la app.
      routes: {
        "pagina1": (BuildContext context) => const Pagina1(), // Ruta para Página 1.
        "pagina2": (BuildContext context) => const Pagina2(), // Ruta para Página 2.
      },
    );
  }
}


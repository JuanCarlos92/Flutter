import 'package:flutter/material.dart';
import './pages/contador.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define la pantalla principal de la aplicación.
      home: Center(
        child:
            Contador(), // Instancia del widget Contador como pantalla principal.
      ),
    );
  }
}

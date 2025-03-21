import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcular Números', // Título 
      theme: ThemeData(
        // Definición colores 
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 33, 219, 243)),
      ),
      home: const PaginaCalculadora(), // Página inicial de la app
    );
  }
}

// Página principal donde se realizarán los cálculos
class PaginaCalculadora extends StatefulWidget {
  const PaginaCalculadora({super.key});

  @override
  State<PaginaCalculadora> createState() => _EstadoPaginaCalculadora();
}

// Estado de la página que permite actualizar la UI cuando se ingresan datos
class _EstadoPaginaCalculadora extends State<PaginaCalculadora> {
  // Controladores para los campos de entrada de los números X e Y
  final TextEditingController _controladorX = TextEditingController();
  final TextEditingController _controladorY = TextEditingController();
  
  // Variable donde se almacenará el resultado de los cálculos
  String _resultado = '';

  // Método que realiza la suma y resta de los valores ingresados
  void _calcular() {
    // Se convierten los valores ingresados a tipo double, si fallan se asigna 0
    double x = double.tryParse(_controladorX.text) ?? 0;
    double y = double.tryParse(_controladorY.text) ?? 0;

    // Se calculan la suma y la resta
    double suma = x + y;
    double resta = x - y;

    // Se actualiza el estado con los resultados
    setState(() {
      _resultado = 'X - Y = $resta\nX + Y = $suma';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calcular números X e Y')), // Título de la barra superior
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Espaciado alrededor del contenido
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos en la pantalla
          children: [

            // Campo de entrada para el número X
            TextField(
              controller: _controladorX, // Asigna el controlador al campo
              keyboardType: TextInputType.number, // Permite solo números
              decoration: const InputDecoration(labelText: 'Ingrese X'),
            ),

            // Campo de entrada para el número Y
            TextField(
              controller: _controladorY, // Asigna el controlador al campo
              keyboardType: TextInputType.number, // Permite solo números como entrada
              decoration: const InputDecoration(labelText: 'Ingrese Y'),
            ),
            const SizedBox(height: 20), // Espaciado entre elementos

            // Botón para ejecutar el cálculo
            ElevatedButton(
              onPressed: _calcular, // Llama al método calcular()
              child: const Text('Calcular'), // Texto del botón
            ),
            const SizedBox(height: 20), // Espaciado  elementos
            // Muestra el resultado del cálculo
            Text(
              _resultado,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Estilo del texto
              textAlign: TextAlign.center, // Alineación centrada
            ),
          ],
        ),
      ),
    );
  }
}

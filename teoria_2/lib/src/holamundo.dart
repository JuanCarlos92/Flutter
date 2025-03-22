import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true, // Si estás usando Material 3, es obligatorio
      ),
      home: const RootPage(),
    );
  }
}

//Raiz de nuestras paginas
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootpageState();
}

class _RootpageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola Mundo'),
        backgroundColor:
            Theme.of(context).colorScheme.primary, // Usa el color del tema
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Click desde flutter");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
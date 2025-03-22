import 'package:flutter/material.dart';

// Widget con estado para manejar dinámicamente la pantalla
class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

// Estado de la pantalla que maneja la lógica de la lista
class _ListViewPageState extends State<ListViewPage> {
  // Lista de elementos a mostrar en el ListView
  final List<String> nombres = <String>[
    "numero1",
    "numero2",
    "numero3",
    "numero4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Color de la barra superior
        title: Text("ListView"), // Título de la AppBar
      ),
      body: ListView.builder(
        itemCount: nombres.length, // Número de elementos en la lista
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 60, // Altura de cada elemento de la lista
            child: Center(
              child: Text(
                "Texto ${nombres[index]}",
              ), // Muestra el texto con el nombre correspondiente
            ),
          );
        },
      ),
    );
  }
}

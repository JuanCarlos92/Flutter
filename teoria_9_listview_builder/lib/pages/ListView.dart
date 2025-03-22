import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final List<String> nombres = <String>[
    "numero1",
    "numero2",
    "numero3",
    "numero4",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("ListView")),
      body: ListView.builder(
        itemCount: nombres.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 60,
            child: Center(child: Text("Texto ${nombres[index]}")),
          );
        },
      ),
    );
  }
}

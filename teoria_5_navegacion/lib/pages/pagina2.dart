import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Pagina 2")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.pop(context)},
      ),
    );
  }
}

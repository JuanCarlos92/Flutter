import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ListView"),
      ),
      body: ListView(
          children:<Widget>[
            Container(height: 60,
            color: Colors.black

            ),
            Container(height: 60,
            color: Colors. blue

            ),
            Container(height: 60,
            color: Colors.yellow

            ),
            Container(height: 120,
            color: Colors.red
            
            ),
          ]
      ),
    );
  }
}
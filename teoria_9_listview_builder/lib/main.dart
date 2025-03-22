import 'package:flutter/material.dart';
import 'package:teoria_9_listview_builder/pages/ListView.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:" ListView",
      home:ListViewPage(),
    );
  }
}
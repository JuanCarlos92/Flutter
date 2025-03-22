import 'package:flutter/material.dart';
import 'package:teoria_6_widget_container/pages/ContainerPage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:" Container",
      home:ContainerPage(),
    );
  }
}
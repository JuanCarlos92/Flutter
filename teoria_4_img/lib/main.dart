import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imagenes",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mostrar imagenes"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 235.0,
                width: 500.0,
                child: SvgPicture.asset("assets/murcielago.svg", color: Colors.red,)
                //child: Image.asset("assets/mhwilds.jpg", fit: BoxFit.fitWidth),
              ),
              SizedBox(
                height: 235.0,
                width: 500.0,
                child: Image.network(
                  "https://i.ibb.co/tMvr8hny/misterjagger.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

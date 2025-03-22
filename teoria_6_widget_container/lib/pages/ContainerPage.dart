import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 30.0),
      child: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.red,
          padding:EdgeInsets.only(top: 20, right: 20),
          // padding: EdgeInsets.all(30.0),
          // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0 ),
          // alignment: Alignment.center,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.yellow,
            child: Text("Hola flutter"),
          ),
        ),
      ),
    );
  }
}

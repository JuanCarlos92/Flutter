import 'package:flutter/material.dart';

// Página que muestra un contenedor con estilos.
class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 30.0,
      ), // Define el estilo de texto predeterminado.
      child: Center(
        child: Container(
          width: 200.0, // Ancho del contenedor externo.
          height: 200.0, // Alto del contenedor externo.
          color: Colors.red, // Color de fondo rojo.
          padding: EdgeInsets.only(
            top: 20,
            right: 20,
          ), // Espaciado interno en la parte superior y derecha.
          // padding: EdgeInsets.all(30.0), // Agrega un padding uniforme de 30 píxeles.
          // padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:10.0), // Padding simétrico.
          // alignment: Alignment.center, // Centra el contenido del contenedor.
          child: Container(
            width: 200.0, // Ancho del contenedor interno.
            height: 200.0, // Alto del contenedor interno.
            color: Colors.yellow, // Color de fondo amarillo.
            child: Text("Hola Flutter"), // Texto dentro del contenedor.
          ),
        ),
      ),
    );
  }
}

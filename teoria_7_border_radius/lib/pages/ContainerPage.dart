import 'package:flutter/material.dart';

// Página que muestra un contenedor con bordes redondeados.
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
          width: 200.0, // Ancho del contenedor.
          height: 200.0, // Alto del contenedor.
          alignment:
              Alignment.center, // Centra el contenido dentro del contenedor.
          decoration: BoxDecoration(
            color: Colors.red, // Color de fondo rojo.
            // borderRadius: BorderRadius.all(Radius.circular(100)),
            // Bordes redondeados solo en la esquina superior derecha y la inferior izquierda:
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                20.0,
              ), // Redondeo de 20px en la esquina superior derecha.
              bottomLeft: Radius.circular(
                20.0,
              ), // Redondeo de 20px en la esquina inferior izquierda.
            ),
          ),
          child: Text("Hola Flutter"), // Texto dentro del contenedor.
        ),
      ),
    );
  }
}

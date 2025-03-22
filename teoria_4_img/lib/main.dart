import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Importa la librería para mostrar imágenes SVG.

void main(List<String> args) {
  runApp(MyApp()); // Inicia la aplicación ejecutando MyApp.
}

// Clase principal de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imagenes", // Título de la aplicación.
      home: Scaffold(
        //barra superior.
        appBar: AppBar(
          title: Text("Mostrar imágenes"), // Título en la barra de la app.
          backgroundColor: Colors.blue, // Color de fondo de la barra.
        ),
        body: Center(
          child: Column(
            // Columna que organiza las imágenes en vertical.
            children: [
              // Contenedor para la imagen SVG local.
              SizedBox(
                height: 235.0, // Altura del contenedor.
                width: 500.0, // Ancho del contenedor.
                child: SvgPicture.asset(
                  "assets/murcielago.svg", // Ruta del archivo SVG dentro del proyecto.
                  color: Colors.red, // Cambia el color de la imagen SVG a rojo.
                ),
                // child: Image.asset("assets/mhwilds.jpg", fit: BoxFit.fitWidth),
              ),

              // Contenedor para la imagen cargada desde internet.
              SizedBox(
                height: 235.0, // Altura del contenedor.
                width: 500.0, // Ancho del contenedor.
                child: Image.network(
                  "https://i.ibb.co/tMvr8hny/misterjagger.jpg", // URL de la imagen en línea.
                  fit:
                      BoxFit
                          .fitWidth, // Ajusta la imagen para que se expanda en el ancho sin distorsión.
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

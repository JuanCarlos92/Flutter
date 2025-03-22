import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importa Google Fonts para personalizar los textos.

class Calcbutton extends StatelessWidget {
  final Function
  callback; // Función que se ejecutará cuando el botón sea presionado.
  final int bgcolor; // Color de fondo del botón.
  final String text; // Texto que aparecerá en el botón.
  final double textSize; // Tamaño del texto en el botón.

  const Calcbutton({
    super.key,
    required this.callback,
    required this.text,
    this.textSize = 28, // Valor por defecto del tamaño del texto.
    this.bgcolor = 0xFF283637, // Color de fondo por defecto.
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10), // Espaciado entre botones.
      child: SizedBox(
        width: 65, // Ancho del botón.
        height: 65, // Alto del botón.
        child: TextButton(
          onPressed:
              () => {
                callback(text),
              }, // Llama a la función `callback` con el texto del botón como argumento.
          style: TextButton.styleFrom(
            backgroundColor: Color(bgcolor), // Color de fondo.
            foregroundColor: Colors.white, // Color del texto en el botón.
            padding: const EdgeInsets.all(16.0), // Espaciado interno.
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: textSize),
            ), // Estiliza el texto con Google Fonts.
          ),
        ),
      ),
    );
  }
}

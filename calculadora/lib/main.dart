import 'package:calculadora/widgets/CalcButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Importa Google Fonts para personalizar los textos.
import 'package:math_expressions/math_expressions.dart'; // Importa el paquete para evaluar expresiones matemáticas.

void main() {
  runApp(CalcApp()); // Inicia la aplicación con el widget `CalcApp`.
}

class CalcApp extends StatefulWidget {
  const CalcApp({super.key});

  @override
  State<CalcApp> createState() => _CalcAppState(); // Crea el estado para `CalcApp`.
}

class _CalcAppState extends State<CalcApp> {
  String _history = ""; // Guarda el historial de cálculos previos.
  String _expression = ""; // Guarda la expresión matemática actual.

  // Función para borrar todo (historial y expresión actual).
  void allClear(String text) {
    setState(() {
      _history = "";
      _expression = "";
    });
  }

  // Función para borrar solo la expresión actual.
  void clear(String text) {
    setState(() {
      _expression = "";
    });
  }

  // Función para evaluar la expresión matemática ingresada.
  void evaluate(String text) {
    Parser p = Parser(); // Crea un parser para analizar la expresión.
    Expression exp = p.parse(
      _expression,
    ); // Convierte la expresión en un objeto evaluable.
    ContextModel cm = ContextModel(); // Contexto para evaluar la expresión.
    setState(() {
      _history = _expression; // Guarda la expresión en el historial.
      _expression =
          exp
              .evaluate(EvaluationType.REAL, cm)
              .toString(); // Evalúa la expresión y guarda el resultado.
    });
  }

  // Función para agregar números y operadores a la expresión.
  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta la bandera de depuración.
      title: "Calculadora",
      home: Scaffold(
        backgroundColor: Color(0xFF283637), // Fondo oscuro para la calculadora.
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment
                    .end, // Alinea los elementos en la parte inferior de la pantalla.
            children: <Widget>[
              // Contenedor para mostrar el historial de cálculos.
              Container(
                alignment: const Alignment(
                  1.0,
                  1.0,
                ), // Alinea el texto a la derecha.
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    _history, // Muestra el historial.
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF545F61), // Color de texto gris oscuro.
                      ),
                    ),
                  ),
                ),
              ),
              // Contenedor para mostrar la expresión actual.
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    _expression, // Muestra la expresión actual.
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 48,
                        color: Colors.white, // Color de texto blanco.
                      ),
                    ),
                  ),
                ),
              ),
              // Fila de botones de funciones especiales.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Calcbutton(
                    bgcolor: 0xFF00BF45, // Verde para "AC" (borrar todo).
                    text: "AC",
                    callback: allClear,
                    textSize: 20,
                  ),
                  Calcbutton(
                    bgcolor: 0xFFE3303A, // Rojo para "C" (borrar actual).
                    text: "C",
                    callback: clear,
                    textSize: 20,
                  ),
                  Calcbutton(text: "%", callback: numClick, textSize: 20),
                  Calcbutton(text: "/", callback: numClick, textSize: 20),
                ],
              ),
              // Filas de botones de números y operadores.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Calcbutton(text: "7", callback: numClick, textSize: 20),
                  Calcbutton(text: "8", callback: numClick, textSize: 20),
                  Calcbutton(text: "9", callback: numClick, textSize: 20),
                  Calcbutton(text: "*", callback: numClick, textSize: 20),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Calcbutton(text: "4", callback: numClick, textSize: 20),
                  Calcbutton(text: "5", callback: numClick, textSize: 20),
                  Calcbutton(text: "6", callback: numClick, textSize: 20),
                  Calcbutton(text: "-", callback: numClick, textSize: 20),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Calcbutton(text: "1", callback: numClick, textSize: 20),
                  Calcbutton(text: "2", callback: numClick, textSize: 20),
                  Calcbutton(text: "3", callback: numClick, textSize: 20),
                  Calcbutton(text: "+", callback: numClick, textSize: 20),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Calcbutton(text: ".", callback: numClick, textSize: 20),
                  Calcbutton(text: "0", callback: numClick, textSize: 20),
                  Calcbutton(text: "00", callback: numClick, textSize: 20),
                  Calcbutton(
                    text: "=",
                    callback: evaluate,
                    textSize: 20,
                  ), // Botón de igual para evaluar la expresión.
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

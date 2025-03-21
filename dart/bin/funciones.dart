void main() {
    //--------------funcion ------------------------
  var resultadoFuncion = suma(45, 5);
  print(resultadoFuncion);
  //--------------funcion Void--------------------
  var nombreFunVoid = "NombrefuncionVoid";
  mostrarnombre(nombreFunVoid);
  //--------------funcion REQUIRED----------------
  var n = "NombrefuncionRequired";
  mostrarnombreRequired(nombreFunRequired: n);

  var nombreFunRequired2 = "NombrefuncionRequired2";
  mostrarnombreRequired2(nombreFunRequired2: nombreFunRequired2);

  //--------------funcion fecha------------------
  var resultadoFecha = sumaFecha(4, 5);
  print(resultadoFecha);
}

//------------------------------------------------------------------------------

//Funciones
int suma(int a, int b) {
  return (a + b);
}

//Funcion void
void mostrarnombre(var nombreFunVoid) {
  print("aquí esta $nombreFunVoid");
}

//funcion required

void mostrarnombreRequired({String? nombreFunRequired}) {
  //Opcional
  print("aquí esta $nombreFunRequired");
}

void mostrarnombreRequired2({required String nombreFunRequired2}) {
  //requerido
  print("aquí esta $nombreFunRequired2");
}

//funcion flecha
int sumaFecha(int a, int b) => (a + b);
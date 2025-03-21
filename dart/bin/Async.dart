void main() async {
  //----------------------------Async-----------------------
  print("Consultando la bd");
  print(await crearOrden());
}

//-------------------------Metodo future async----------------------
//Async: espera la respuesta para ejecutar la siguiente tarea
//login
//valida usuario y contraseña
//menu principal

Future<String> crearOrden() async {
  var respuesta = await consultarOrden();
  return ("La orden es: ${respuesta}");
}

Future<String> consultarOrden() =>
    Future.delayed(const Duration(seconds: 5), () => "Cafe express");

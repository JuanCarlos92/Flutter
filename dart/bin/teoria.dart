import 'dart:convert';
import 'dart:math';

void main() async {
  //Tipo de datos
  String nombre = "franklin 4081";
  nombre = "flanklin 2";
  int numero = 1;
  double numero2 = 1;
  bool condicion = false;
  dynamic dm = 1;
  dm = "hola mundo";
  dm = true;
  print(dm);

  //Diferencia de tipos
  var dato = 2; // no se puede cambiar el valor
  //dato = "nombre"
  var datoTrue = true;
  //datoTrue = 2;

  print(dato);

  //LISTA
  List<String> lista;
  lista = ["lista", "juan"];
  print(lista);

  //Lista dinamica
  List<dynamic> listaDinamica;
  listaDinamica = ["listaDinamica", true];
  print(listaDinamica);

  //Lista añadiendo valores add
  List<dynamic> listaDinamicaAdd;
  listaDinamicaAdd = ["listaDinamicaAñadir", true];
  listaDinamicaAdd.add("juan");
  print(listaDinamicaAdd);

  //Lista remove index
  List<dynamic> listaDinamicaRemove;
  listaDinamicaRemove = ["listaDinamicaRemove", true];
  listaDinamicaRemove.add("juan");
  listaDinamicaRemove.removeAt(1); //remove por el index
  listaDinamicaRemove.removeLast(); //remove el ultimo
  print(listaDinamicaRemove);

  //Set (ignorar elementos repetidos)
  Set datos = Set.from(["SetFranklin", "Hola mundo", "SetFranklin"]);
  datos.add("añadido");
  datos.add(true);
  datos.remove("añadido"); //elimina lo indicado
  //datos.clear(); //elimina todo
  print(datos);

  //Variable maps
  var colores = {"color1": "blanco", "color2": "azul"};
  var color3 = {"color3": "amarillo"};
  colores.addAll(color3);
  colores.remove("color2"); //eliminar el color seleccionado
  //colores.clear(); eliminar todo el maps

  print(colores);

  //Const y final
  const nombreConst =
      "JuanCarlos"; //No se puede ejecutar en tiempo de ejecucion
  final horaFinal = new DateTime.now(); //Si se ejecuta en tiempo de ejecucion

  print(nombreConst);
  print(horaFinal);

  //Operaciones aritmeticos
  var n1 = 5.5;
  var n2 = 9;
  var resultado = n1 + n2;
  //var resultado = n1 * n2;
  //var resultado = n1 / n2;
  //var resultado = n1 - n2;
  print(resultado);

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

  //--------------Condiconales--------------------
  var precio = 500;
  if (precio == 500 && precio == 0) {
    print("Precio promedio");
  } else if (precio > 500) {
    print("Preio mayor del promedio");
  } else {
    print("Precio menor al promedio");
  }

  //-----------------Operadores ternario---------------------
  var precioTernario = 400;
  var barato = null;
  if (precioTernario < 500) {
    barato = true;
  } else {
    barato = false;
  }
  barato = precio < 500 ? true : false; //Usar operador ternario

  print(precioTernario);

  //-----------------Operadores asignacion--------------------
  var a = 2;
  //a = a + 5;
  a += 5; //asignacion
  //a *= 5;
  //a -= 5;
  print(a);

  dynamic b = 8;
  b /= 5;
  print(b);

  //----------------------Bucles for-------------------------
  var numerofor = 0;

  for (var num = 0; num <= 10; num++) {
    print(numerofor);
  }

  //Bucle con lista
  var listafor = [0, 1, 2];

  for (var item in listafor) {
    print(item);
  }

  //Bucle con lista (forEach)
  listafor.forEach((item) => print(item));

  //-----------------Bucles while y do while--------------------
  var estado = false;
  while (estado == false) {
    print("hola while");
    estado = true;
    if (estado == true) {
      continue;
    }
    break;
  }

  /*
  // ignore: dead_code
  do{
    print("hola doWhile");
    break;
  // ignore: dead_code
  }while(estado == false);
*/

  //-------------------------Switch------------------------
  var item = "abierto";
  switch (item) {
    case "close":
      print("caso1");
      break;
    case "abierto":
      print("caso2");
      break;
    default:
      print("ningun caso");
  }
  //------------------------Excepciones---------------------
  String mensajeException = "holaError";
  try {
    print({mensajeException[5]}); //Muestra la posicion 5 (r)
  } catch (e) {
    print(e);
  }

  //-------------------------Usar Clase---------------------
  //final pikachu = Pokemon(nombre: "pikachu", tipo: "electrico");
  //final pikachu = new Pokemon(nombre: "pikachu", tipo: "electrico");
  //print(pikachu);

  //print(pikachu.nombre);
  //print(pikachu.tipo);

  // final pikachu = new Pokemon("pikachu", "electrico");

  // print(pikachu.tipo);

  //----------------------Clase Constructor con nombre----------------
  final rawJson = '{ "nombre" : "pikachu", "tipo" : "electrico"}';
  final parsedJson = jsonDecode(rawJson);

  final pikachu = new Pokemon.fromJson(parsedJson);

  print(pikachu.tipo);

  //----------------------Getter y setter----------------
  Estudiante estudiante = new Estudiante();
  estudiante.edad_estudiante = 30;
  estudiante.nombre_estudiante = "JuanEstudiante";
  print(estudiante.edad);
  print(estudiante.nombre_estudiante);

  //----------------------Clases abstractas----------------
  var respuesta = TrianguloRectangulo(5, 10);
  print("La figura es un : ${respuesta.nombre}");
  print("El area es : ${respuesta.area()}");

  var respuesta2 = Rectangulo(5, 10);
  print("La figura es un : ${respuesta2.nombre}");
  print("El area es : ${respuesta2.area()}");

  //----------------------------Async-----------------------
  print("Consultando la bd");
  print(await crearOrden());
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

//Operadores logicos, relacionales y condicionales

/*
relacionales
==    Igual que
!=    Distinto que
<     Menor que
<=    Menor o igual que
>     Mayor que
>=    Mayor o igual que

logico
||    Or(ó)
&&    And (y)
!     negacion

condicionales
  var precio = 500;
  if (precio == 500) {
    print("Precio promedio");
  } else if (precio > 500) {
    print("Preio mayor del promedio");
  } else {
    print("Precio menor al promedio");
  }


*/

//------------------------Clases---------------------
// class Pokemon {
//   late String nombre;
//   late String tipo;

//   Pokemon({String nombre = "null", String tipo = "null"}) {
//     this.nombre = nombre;
//     this.tipo = tipo;
//   }
//   String toString() {
//     return "nombre: ${this.nombre} - ${this.tipo}";
//   }
// }

//------------------------Clases optimizadas---------------------

// class Pokemon {
//   late String nombre;
//   late String tipo;

//   Pokemon({this.nombre = "null", this.tipo = "null"});

//   String toString()=> "nombre: $nombre - tipo: $tipo";
//   }

//------------------Clases Contructores con nombre-----------------

class Pokemon {
  late String nombre;
  late String tipo;

  Pokemon(this.nombre, this.tipo);
  Pokemon.fromJson(parsedJson) {
    nombre = parsedJson['nombre'];
    tipo = parsedJson['tipo'];
  }
}

//---------------------------Getter y setter----------------------
class Estudiante {
  late String nombre;
  int edad = 0;

  void set edad_estudiante(int edad) {
    if (edad <= 0) {
      print("la edad debe ser mayor a 0");
    } else {
      this.edad = edad;
    }
  }

  int get edad_estudiante => edad;

  String get nombre_estudiante => nombre;

  void set nombre_estudiante(String nombre) {
    this.nombre = nombre;
  }
}

//-------------------------Clases abstractas----------------------
abstract class Figura {
  late final String nombre;
  late final List<double> lados;
  double area();
}

class TrianguloRectangulo extends Figura {
  TrianguloRectangulo(double base, double altura) {
    nombre = "Triangulo rectangulo";
    lados = [base, altura, sqrt(pow(base, 2) + pow(altura, 2))];
  }
  @override
  double area() {
    return (lados[0] * lados[1]) / 2;
  }
}

class Rectangulo extends Figura {
  Rectangulo(double base, double altura) {
    nombre = "Rectangulo";
    lados = [base, altura, base, altura];
  }

  @override
  double area() {
    return lados[0] * lados[1];
  }
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

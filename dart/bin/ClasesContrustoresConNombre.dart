import 'dart:convert';

void main(List<String> args) {
  //----------------------Clase Constructor con nombre----------------
  final rawJson = '{ "nombre" : "pikachu", "tipo" : "electrico"}';
  final parsedJson = jsonDecode(rawJson);

  final pikachu = new Pokemon.fromJson(parsedJson);

  print(pikachu.tipo);
}

//------------------Clase Contructores con nombre-----------------
class Pokemon {
  late String nombre;
  late String tipo;

  Pokemon(this.nombre, this.tipo);
  Pokemon.fromJson(parsedJson) {
    nombre = parsedJson['nombre'];
    tipo = parsedJson['tipo'];
  }
}

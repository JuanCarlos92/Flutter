void main(List<String> args) {
  //-------------------------Usar Clase---------------------
  final pikachu = Pokemon(nombre: "pikachu", tipo: "electrico");
  //final pikachu = new Pokemon(nombre: "pikachu", tipo: "electrico");
  print(pikachu);

  print(pikachu.nombre);
  print(pikachu.tipo);

  //final pikachu = new Pokemon("pikachu", "electrico");

  print(pikachu.tipo);
}

//------------------------Clase optimizada---------------------
class Pokemon {
  late String nombre;
  late String tipo;
  Pokemon({this.nombre = "null", this.tipo = "null"});

  String toString() => "nombre: $nombre - tipo: $tipo";
}

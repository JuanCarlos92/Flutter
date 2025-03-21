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

//------------------------Clase---------------------
 class Pokemon {
   late String nombre;
   late String tipo;

   Pokemon({String nombre = "null", String tipo = "null"}) {
     this.nombre = nombre;
     this.tipo = tipo;
   }
   String toString() {
     return "nombre: ${this.nombre} - ${this.tipo}";
   }
 }


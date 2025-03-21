void main() {
    //Set (ignorar elementos repetidos)
  Set datos = Set.from(["SetFranklin", "Hola mundo", "SetFranklin"]);
  datos.add("añadido");
  datos.add(true);
  datos.remove("añadido"); //elimina lo indicado
  //datos.clear(); //elimina todo
  print(datos);
}
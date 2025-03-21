void main() {
  //Lista remove index
  List<dynamic> listaDinamicaRemove;
  listaDinamicaRemove = ["listaDinamicaRemove", true];
  listaDinamicaRemove.add("juan");
  listaDinamicaRemove.removeAt(1); //remove por el index
  listaDinamicaRemove.removeLast(); //remove el ultimo
  print(listaDinamicaRemove);
}

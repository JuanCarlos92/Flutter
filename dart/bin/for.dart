void main() {
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
}

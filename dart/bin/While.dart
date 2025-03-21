void main() {
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
}

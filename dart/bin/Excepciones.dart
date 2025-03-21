void main() {
  //------------------------Excepciones---------------------
  String mensajeException = "holaError";
  try {
    print({mensajeException[5]}); //Muestra la posicion 5 (r)
  } catch (e) {
    print(e);
  }
}

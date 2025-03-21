void main(List<String> args) {
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
}

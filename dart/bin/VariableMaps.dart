void main() {
  //Variable maps
  var colores = {"color1": "blanco", "color2": "azul"};
  var color3 = {"color3": "amarillo"};
  colores.addAll(color3);
  colores.remove("color2"); //eliminar el color seleccionado
  //colores.clear(); eliminar todo el maps

  print(colores);
}

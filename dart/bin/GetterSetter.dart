void main() {
  //----------------------Getter y setter----------------
  Estudiante estudiante = new Estudiante();
  estudiante.edad_estudiante = 30;
  estudiante.nombre_estudiante = "JuanEstudiante";
  print(estudiante.edad);
  print(estudiante.nombre_estudiante);
}

//---------------------------Getter y setter----------------------
class Estudiante {
  late String nombre;
  int edad = 0;

  void set edad_estudiante(int edad) {
    if (edad <= 0) {
      print("la edad debe ser mayor a 0");
    } else {
      this.edad = edad;
    }
  }

  int get edad_estudiante => edad;

  String get nombre_estudiante => nombre;

  void set nombre_estudiante(String nombre) {
    this.nombre = nombre;
  }
}

class Salon {
  int cantFilas;
  int cantColumnas; 
  Alumnos [][] alumnos;
  float numeroRandomNotas;
  float numeroRandomAlumnos;
  
  Salon(int _cantFilas) {
    cantFilas = _cantFilas;
    cantColumnas = _cantFilas-1;
    alumnos = new Alumnos [cantFilas][cantColumnas];
    int tam = width/cantFilas;
    for (int i = 0; i < cantFilas; i++) {
      for (int j = 0; j < cantColumnas; j++) {
        numeroRandomNotas = floor(random(1,10));
        numeroRandomAlumnos = round(random(7));
        alumnos[i][j] = new Alumnos(i, j, tam, numeroRandomNotas, numeroRandomAlumnos);
        
      }
    }
  }

  void dibujar() {
    for (int i = 0; i < cantFilas; i++) {
      for (int j = 0; j < cantColumnas; j++) {
        alumnos[i][j].dibujar();
      }
    }
  }
  
  void mousePresionado(){
    for (int i = 0; i < cantFilas; i++) {
      for (int j = 0; j < cantColumnas; j++) {
        alumnos[i][j].mousePresionado();
      }
    }
    }
    
}

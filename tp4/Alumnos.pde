class Alumnos {
  int posX;
  int posY;
  int tam;
  float distancia;
  float numeroRandomNotas;
  float numeroRandomAlumnos;
  boolean alumnoPresionado;
  String [] nombresDeImagenes = {"alumno_0.jpg", "alumno_1.jpg", "alumno_2.jpg", "alumno_3.jpg","alumno_4.jpg","alumno_5.jpg","alumno_6.jpg", "alumno_7.jpg"};
  PImage [] imagenes = new PImage [6];
  Notas notas;
  
  Alumnos(int _posX, int _posY, int _tam, float _numeroRandomNotas, float _numeroRandomAlumnos) {   
    posX = _posX;
    posY = _posY;    
    tam = _tam;
    numeroRandomNotas = _numeroRandomNotas;  
    numeroRandomAlumnos = _numeroRandomAlumnos;
    notas = new Notas(numeroRandomNotas, numeroRandomAlumnos, posX, posY, tam);
     for (int i = 0; i <6; i++){
     imagenes[i] = loadImage("alumno_" + numeroRandomAlumnos+".jpg");
     }
  }

  void dibujar() {
   if (alumnoPresionado == false){
    image(imagenes[posX], posX * tam, posY * tam, tam, tam);
   } if (alumnoPresionado == true){
     notas.dibujar();
   }
   fill(0);
   textSize(15);
   text ("Presione para ver si el alumno esta aprobado o desaprobado",  30, 450);
   }
  
  
  void mousePresionado(){
    distancia = dist(mouseX, mouseY, posX *tam  + tam/2, posY *tam + tam/2 );    
    if (distancia < tam/2){
     alumnoPresionado = true; 
    } else {
      alumnoPresionado = false; 
    }  
  }
     
}

/*dibuja los errores y aciertos*/
void incorrecto() {   
  textSize(16);
  fill(0);
  text("PUNTOS", 110, 506);  
  textSize(40);
  fill(#FF0000);
  text(errores, 50, 540);
  fill(#2EB748);
  text(suma*10, 110, 540);
}

/*Funciones propias sin parámetros*/
/*cuenta y dibuja el tiempo*/
void tiempo() {
  textSize(40);
  if (tiempo%60==0) {
    tiempoJuego++;
    if (tiempoJuego == cant+3) {
      perdio=true;
    }
    text( tiempoJuego, 500, 540);
  } else {
    tiempoJuego=tiempoJuego;
    text( tiempoJuego, 500, 540);
  }
}

/*Funciones propias con parámetros*/
/*cartel si pierde*/
void perdio(int aciertos) {
  textSize(40);
  fill(#FF0000);
  text("PERDISTE", 180, 120);
  fill(0);
  text("PUNTAJE: " + aciertos*10, 170, 170);
  suma=0;
  errores=0;
  tiempoJuego=0;
  empezar=false;      
  reiniciar=false;
}


/*cartel si gana*/
void gano(int aciertos) {
  textSize(40);
  fill(#2EB748);
  text("GANASTE", 200, 120);
  fill(0);
  text("PUNTAJE: " + aciertos*10, 170, 170);
  suma=0;
  errores=0;
  empezar=false;      
  reiniciar=false;
}

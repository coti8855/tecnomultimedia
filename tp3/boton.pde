/*boton reiniciar*/
void empezarReiniciar(){    
  if (mouseX >200 && mouseX <400 && mouseY >500 && mouseY <550 && reiniciar==false) {
    empezar=true;      
    reiniciar=true;
    reiniciarEmpezar = "REINICIAR";
    numeroRandomX= floor(random(cant));
    numeroRandomY= floor(random(cant));
    colorRandom = random (255);
    perdio=false;
    tiempoJuego=0;

    /*boton empezar*/
  } else if (mouseX >200 && mouseX <400 && mouseY >500 && mouseY <550 && reiniciar==true) {
    suma=0;
    errores=0;
    empezar=false;
    reiniciar=false;
    reiniciarEmpezar = "EMPEZAR";
    numeroRandomX= floor(random(cant));
    numeroRandomY= floor(random(cant));
    colorRandom = random (255);
    perdio=false;
    tiempoJuego=0;
  }
  }

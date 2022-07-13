/* https://youtu.be/EdxEWAzLFlU */
int cant=2;
int tamX, tamY;
float colorRandom, numeroRandomX, numeroRandomY;
int posX = 0;
int posY = 0;
int []x= new int [15];
int []y= new int [15];
int suma = 0;
int errores = 0;
boolean error;
boolean empezar= false;
boolean reiniciar=false;
boolean perdio= false;
boolean gano=false;
int tiempo =0;
int tiempoJuego=0;
String reiniciarEmpezar = "EMPEZAR";
color  colorBoton=(230);
PFont  fuenteNueva;
int aciertos;
boolean creditos=false;


void setup() {
  size(600, 600);
  tamX = 10*5;
  tamY = 10*5;
  fuenteNueva = loadFont("fuenteNueva.vlw");
  textFont(fuenteNueva);
  colorMode(HSB);
  colorRandom = random (255);
  numeroRandomX= floor(random(cant));
  numeroRandomY= floor(random(cant));
}

void draw() {
  background(255);
  if (creditos) {
    creditos();
  }

  if (creditos==false) { 
    circulos();
    /*conteo del tiempo*/
    /*uso condicionales*/
    if (empezar) {
      tiempo++;
      tiempo();
    }
    if (suma==0) {
      cant=2;
    }
    if (perdio) {
      perdio(aciertos);
    }
    if (gano) {
      gano(aciertos);
    }
  }
}


/*eventos del mouse*/
void mouseClicked() {
 empezarReiniciar();
  if (empezar) {
    juego();
  }
   pantallaCreditos();
}



/*color al pasar el mouse por arriba del boton*/
void mouseMoved() {
  if (mouseX >200 && mouseX <400 && mouseY >500 && mouseY <550) {
    colorBoton=(200);
  } else {
    colorBoton=(230);
  }
}

/*dibujo circulos*/
void circulos(){
  fill(240);
    ellipse(570, 25, 35, 35); 
    fill(0);
    textSize(30);
    text("?", 560, 35);
    /*boton empezar*/
    fill(colorBoton);
    rect(200, 500, 200, 50);
    fill(0);
    textSize(30);
    text(reiniciarEmpezar, 215, 533);
    textSize(15);
    text("ENCUENTRA  EL  CIRCULO  DISTINTO", 158, 30);
    incorrecto();
    /*guarda en arreglos las posiciones de los circulos*/
    /*uso de estructuras repetitivas (ciclos for) y arreglos*/
    for (int i=0; i<15; i++) {
      for (int j=0; j<15; j++) {
        y[j]=j;
        x[i]=i;
      }
    }
    /*dibuja los circulos*/
    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        fill(colorRandom, colorRandom, colorRandom); 
        /*toma un valor random y lo pinta de otro tono*/
        if ( x[i] ==numeroRandomX && y[j] == numeroRandomY) {
          fill(colorRandom, colorRandom, colorRandom+30);
        }
        noStroke();
        ellipse(x[i]*(tamX+5)+ ((width-(cant*(tamX+5)))/2)+tamX/2, y[j]*(tamY+5)+ ((width-((cant+1)*tamY+5))/2), tamX, tamY);
      }  
}
}

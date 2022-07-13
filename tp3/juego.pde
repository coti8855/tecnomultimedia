/*ejecucion del juego*/
void juego(){
for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        float distan2 = dist(mouseX, mouseY, x[i]*(tamX+5)+ ((width-(cant*(tamX+5)))/2)+tamX/2, y[j]*(tamY+5)+ ((width-((cant+1)*tamY+5))/2));
        float radio2 = tamX /2; 
        float distan = dist(mouseX, mouseY, numeroRandomX*(tamX+5)+ ((width-(cant*(tamX+5)))/2)+tamX/2, numeroRandomY*(tamY+5)+ ((width-((cant+1)*tamY+5))/2));
        float radio = tamX /2; 

        /*cuenta los aciertos*/
        if ( x[i] ==numeroRandomX && y[j] == numeroRandomY && distan<radio) {
          suma++;
          aciertos = suma;
          error=false;
          tiempoJuego=0;      
          if (suma%2==0 && cant<8) { 
            cant++;
          } else {
            cant=cant;
          }
          if (suma>=50) {
            gano=true;
          }
          numeroRandomX= floor(random(cant));
          numeroRandomY= floor(random(cant));
          colorRandom = random (255);
        } else {
          error=true;
        }

        /*cuenta los errores*/
        if ( error==true && distan2<radio2) {
          errores++;
          println(errores);
          if (errores >=4) {
            errores=4; 
            perdio=true;
          }
        }
      }
  }




}  
  
  

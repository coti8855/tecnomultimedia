
/*funciones propias con y sin parametros*/
void dibujarFuncion(){
  /*estructura ciclo for*/
 for(int i=0; i<cant; i++){  
    for(int u=0; u<cant; u++){
      strokeWeight(8);
      fill(colorOscuro);
      stroke(colorInter);
      rect(i*tamX, u*tamY, tamX, tamY);
      strokeWeight(1);
      fill(colorClaro);
      noStroke();
      if(i != 0 && u != 0){
      ellipse(i*tamX, u*tamY, tamX/4,tamY/4);
      }
    }
    
    if(cant==8){
     colorOscuro=color(0,0,0); 
     colorClaro=color(255);
     colorInter=color(100); 
    }
  }     
 }
 
   void coloresRandom(int claro, int oscuro){  
   /*funcion matematica random()*/
  colorOscuro=color(random(oscuro,40), 0,random(oscuro,40)); 
  colorClaro=color(random(200,claro), random(200,claro),0 );
  colorInter=color(random(100,140),random(100,140),random(100,140));
}

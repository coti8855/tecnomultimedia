float posY, 
tamLetra= 30, posY2, posY3, finalTitulo=1;



void primeraPantalla(){
  
  background(0);
  fill(255);
  textSize(tamLetra);
  text("titulos: gradlie", 100, posY);
  if (posY > 450){
   finalTitulo = 2;  
  }
  posY++;
}

void segundaPantalla(){

 background(0);
 fill (255,255,0);
 textSize(tamLetra);
 text( "dirigido por", 100, posY2);
 
 if (posY2 > 450){
  finalTitulo = 3; 
 }
 posY2++;
}

void tercerPantalla() {

   background(0);
 fill (255,0,255);
 textSize(tamLetra);
 text( "dirigido por", 100, posY3);

 
 posY3++;
}

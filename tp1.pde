
PFont fuenteNueva;



void setup(){
 size(400,400);
 fuenteNueva = loadFont("BankGothicBT.vlw");
  textFont(fuenteNueva);
  noCursor();

   
}

void draw(){
  if(finalTitulo == 1){
 primeraPantalla();
  }
 if(finalTitulo ==2){
   segundaPantalla();

 }
 if(finalTitulo ==3){
  tercerPantalla(); 
 }
if(finalTitulo ==4){
  cuartaPantalla(); 
 }

  if(finalTitulo ==5){
  quintaPantalla(); 
 }


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
}

/*
  void keyPressed(){
  if(finalTitulo <= 3 && key == 'd'){
    finalTitulo++;
  }
  if(finalTitulo >= 1 && key == 'a'){
    finalTitulo--;
  }
}
*/
void keyPressed(){
  if(finalTitulo <= 3 && key == 'd'){
    finalTitulo++;
  }
   if(finalTitulo == 4 && key == 'd'){
    finalTitulo = 1;
  }
  if(finalTitulo >= 1 && key == 'a'){
    finalTitulo--;
  }
  if(finalTitulo == 0 && key == 'a'){
    finalTitulo= 3;
  }
  
  
}
  

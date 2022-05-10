
void setup(){
 size(400,400);
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
  

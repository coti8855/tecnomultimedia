class Tablero {
  int cantCasillas;
  Casilla [][] casillas; 
  int posX2 = 0;
  int posY2 = 0;
  int posXBomba;
  int posYBomba;
  boolean hayBomba;
  int numero;
 int cantMinas;
 int posicionesX[];
 int posicionesY[];
boolean jugando;
  
  Tablero(int _cantCasillas) {
    cantCasillas = _cantCasillas;   
    casillas = new Casilla [cantCasillas][cantCasillas];    
    int tam = (width-25)/cantCasillas;    
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if (random(100)<20) {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas, new Bomba(i, j, tam));
        } else {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas);
        }
      }
    }
posicionesX = new int[cantCasillas];
  posicionesY = new int[cantCasillas];
 jugando = true;
   
  }

  void dibujar() {
     for (int i=0; i<cantCasillas; i++) {
      for (int j=0; j<cantCasillas; j++) { 
        if (casillas[posX2][posY2].hayBomba( posX2, posY2)) {
          casillas[i][j].perdiste();
          /*
        } else {
          casillas[posicionesX[i]][posicionesY[j]].mostrar(i, j, posicionesX[i], posicionesY[j] );
           if(posicionesY[j] >0){
          casillas[posicionesX[i]][posicionesY[j]-1].mostrar(i, j, posicionesX[i], posicionesY[j]-1 );
           }if(posicionesY[j] <13){
          casillas[posicionesX[i]][posicionesY[j]+1].mostrar(i, j, posicionesX[i], posicionesY[j]+1 );
          }
          if(posicionesX[i]> 0){
          casillas[posicionesX[i]-1][posicionesY[j]].mostrar(i, j, posicionesX[i]-1, posicionesY[j]);
          if(posicionesY[j]> 0 ){
          casillas[posicionesX[i]-1][posicionesY[j]-1].mostrar(i, j, posicionesX[i]-1, posicionesY[j]-1);
           
          }if(posicionesY[j] <13){
          casillas[posicionesX[i]-1][posicionesY[j]+1].mostrar(i, j, posicionesX[i]-1, posicionesY[j]+1);
          }
        }
          if(posicionesX[i] <13){
          casillas[posicionesX[i]+1][posicionesY[j]].mostrar(i, j, posicionesX[i]+1, posicionesY[j]);
          if(posicionesY[j]> 0){
          casillas[posicionesX[i]+1][posicionesY[j]-1].mostrar(i, j, posicionesX[i]+1, posicionesY[j]-1);
          }if(posicionesY[j] <13){
          casillas[posicionesX[i]+1][posicionesY[j]+1].mostrar(i, j, posicionesX[i]+1, posicionesY[j]+1);
          }
          }
          }*/
            
        } else {
          casillas[posX2][posY2].mostrar(i, j, posX2, posY2 );
           if(posY2 >0){
          casillas[posX2][posY2-1].mostrar(i, j, posX2, posY2-1 );
           }if(posY2 <13){
          casillas[posX2][posY2+1].mostrar(i, j, posX2, posY2+1 );
          }
          if(posX2> 0){
          casillas[posX2-1][posY2].mostrar(i, j, posX2-1, posY2);
          if(posY2> 0 ){
          casillas[posX2-1][posY2-1].mostrar(i, j, posX2-1, posY2-1);
           
          }if(posY2 <13){
          casillas[posX2-1][posY2+1].mostrar(i, j, posX2-1, posY2+1);
          }
        }
          if(posX2 <13){
          casillas[posX2+1][posY2].mostrar(i, j, posX2+1, posY2);
          if(posY2> 0){
          casillas[posX2+1][posY2-1].mostrar(i, j, posX2+1, posY2-1);
          }if(posY2 <13){
          casillas[posX2+1][posY2+1].mostrar(i, j, posX2+1, posY2+1);
          }
          }
          }
          calcularCantidadMinas();

        }
      }
     
  }
  

void calcularCantidadMinas(){ 
   for(int i=0; i<cantCasillas; i++){
    for(int j=0; j<cantCasillas; j++){ 
     cantMinas = 0;
       if(i >0 && j >0){
       if(casillas[i-1][j-1].hayBomba(i-1,j-1)){
          cantMinas ++;
        
      }
       }if(i >0){
        if(casillas[i-1][j].hayBomba(i-1, j)){
          cantMinas ++;
         
        }
      }
    
      if(j <13 && i >0){
       if(casillas[i-1][j+1].hayBomba(i-1, j+1)){
          cantMinas ++;
      
       }
     }
       
       if(i <13 && j >0){
       if(casillas[i+1][j-1].hayBomba(i+1, j-1)){
          cantMinas ++;
        
       }
     }if(i <13){
       if(casillas[i+1][j].hayBomba(i+1, j)){
          cantMinas ++;
       
       }      
     }if(j <13){
     if(casillas[i][j+1].hayBomba(i, j+1)){
          cantMinas ++;
          
       }
     }if(j <13 && i <13){
       if(casillas[i+1][j+1].hayBomba(i+1, j+1)){
          cantMinas ++;
         
       }
     }if(j >0){
       if(casillas[i][j-1].hayBomba(i, j-1)){
          cantMinas ++;
      
       }    
     }      
    
    casillas[i][j].tieneXMinasAlrededor(cantMinas); 
   
    }
   }
}


  void mousePresionado() { 
    if(mouseX >= 15 && mouseX <= 313 && mouseY >= 146 && mouseY <= 444){
    posX2 = floor(map(mouseX, 15, 313, 0, cantCasillas));
    posY2 = floor(map(mouseY, 146, 444, 0, cantCasillas));   
    }/*
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
   posicionesX[posX2]= posX2;
  posicionesY[posY2]= posY2;
        
      }     
    }
    */
    if (casillas[posX2][posY2].hayBomba(posX2, posY2)) {
      fileTrack2.play();
    }else {
        fileTrack.play();      
    }
    
}
}

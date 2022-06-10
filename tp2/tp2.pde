

int cant = 8;
int tamX, tamY;
color colorOscuro = (0), colorClaro=(255), colorInter=(100);


   void setup(){
  size(400, 400);
  tamX = width/cant;
  tamY = height/cant;
   }

    void draw(){
  background(0);
  dibujarFuncion();
   }


  /*eventos*/
  void mouseClicked(){
   /*se agranda y achica la ilusion*/
  if(mouseButton == RIGHT && cant<10){
   cant++; 
   /*pasa numeros por parametro*/
   coloresRandom(255,0);
  }  
  else if(mouseButton == LEFT && cant>5){
  cant--;
 /*pasa numeros por parametro*/
  coloresRandom(255,0);
  }
 
    tamX = width/cant;
    tamY = height/cant;
  
  }

/*variables vuelven a su estado original*/
  void keyPressed(){
 if(key == ' ' ){
  cant=8;  
 }
 tamX = width/cant;
 tamY = height/cant;
  
}

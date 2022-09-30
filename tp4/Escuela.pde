class Escuela{
  Salon salon;
  boolean pantallaEscuela;
  PImage imgSalon;
  Escuela(){
    salon = new Salon(5);
    pantallaEscuela = true;
    imgSalon = loadImage("salon.jpg");
  }
  
  void dibujar(){
    if(pantallaEscuela == true){
      image(imgSalon, 0,0 , width, height);
      fill(0);
      textSize(20);
      text( "Presione la puerta para ingresar al salon", 50, 435);
    } if(pantallaEscuela == false){
       salon.dibujar();   
    }
  }
  void mousePresionado(){
    if (mouseX > 200 && mouseX < 300 &&  mouseY > 150  &&  mouseY < 400){
    pantallaEscuela = false;
    } 
     salon.mousePresionado();
  }
}

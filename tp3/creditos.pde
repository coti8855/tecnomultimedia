/*dibujo pantalla de creditos*/
void creditos() {
  background(240);
  fill(0);
  textSize(38);
  text("<-", 20, 35);
  textSize(32);
  text("JUEGO IMITADO: COLOR BLIND", 40, 100);
  textSize(25);
  text("OBJETIVO:", 40, 150); 
  text("ENCONTRAR EL CIRCULO DISTINTO", 40, 180); 
  text("EL JUGADOR CUENTA CON:", 40, 210);
  fill(#FF0000);
  text("TIEMPO LIMITADO Y LIMITE DE ERRORES", 40, 240);
  fill(#32AF09);
  text("PUNTAJE MAXIMO: 500", 40, 270);
  fill(0);
  text("HECHO POR: LHUILLIER CONSTANZA", 40, 300);
}
/*boton pantalla creditos*/
  void pantallaCreditos(){
  float distan3 = dist(mouseX, mouseY, 570, 25);
  float radio3 =  35/2; 
  if (creditos==false && distan3<radio3) {
    creditos=true;
  }
  if (creditos==true && mouseX<80 && mouseY<60) {
    creditos=false;
  }
  }

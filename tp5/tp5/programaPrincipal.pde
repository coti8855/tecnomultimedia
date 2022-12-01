class ProgramaPrincipal {
  Juego juego;
  Creditos creditos;
  Ayuda ayuda;
  int pantalla;
  PImage imagenJuego; 
  ProgramaPrincipal() {
    juego = new Juego();
    creditos = new Creditos(this);
    ayuda = new Ayuda();
    pantalla = 1;
    imagenJuego = loadImage("buscaminasLleno.png");
  }

  void dibujar() {
    if (pantalla == 1) {
      image(imagenJuego, 0, 0, width, height);
      juego.dibujar();
    }
    if (pantalla == 2) {
      ayuda.dibujar();
    } 
    if (pantalla == 3) {
      creditos.dibujar();
    }
  }


  void mousePresionado() {
    if (mouseX > 0 && mouseX < 78 &&  mouseY > 0  &&  mouseY < 40) {
      pantalla = 1;
    } 
    if (mouseX > 78 && mouseX < 140 &&  mouseY > 0  &&  mouseY < 40) {
      pantalla = 2;
    } 
    if (mouseX > 140 && mouseX < 250 &&  mouseY > 0  &&  mouseY < 40) {
      pantalla = 3;
    } 
    if (mouseX > 140 && mouseX < 192 &&  mouseY > 70  &&  mouseY < 122) {
      juego.iniciar();
    } 
    juego.mousePresionado();
  }
}

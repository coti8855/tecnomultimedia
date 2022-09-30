 /* https://youtu.be/gr8XIH-0ye4 */

Escuela escuela;

void setup(){
  size(500, 500);
  escuela = new Escuela();
}

void draw(){
  background(255);
 escuela.dibujar();
}

void mousePressed(){
  escuela.mousePresionado();
}

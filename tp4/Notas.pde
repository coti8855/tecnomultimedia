class Notas{
  int posX;
  int posY;
  int tam;
  color VerdeRojo;
  float numeroRandomNotas;
  float numeroRandomAlumnos;
  String nota;
 
  Notas(float _numeroRandomNotas, float _numeroRandomAlumnos, int _posX, int _posY, int _tam){    
    numeroRandomNotas = _numeroRandomNotas;  
    numeroRandomAlumnos = _numeroRandomAlumnos;
    posX= _posX;
    posY= _posY;
    tam= _tam;
  }
  
  void dibujar(){
    fill(VerdeRojo);
   if (numeroRandomNotas < 5){
     aprobo();
   }if (numeroRandomNotas >= 5){
     desaprobo();
   }   
      rect ( posX * tam, posY * tam, tam, tam);
      fill(0);
      textSize(12);
      text( nota, posX * tam + 5, posY * tam + tam/2);      
  }
  
   void aprobo(){
    VerdeRojo = (#40FC08);
    nota = "APROBADO";      
  }
   void desaprobo(){
     VerdeRojo = (#FC0808);  
     nota = "DESAPROBADO";       
  }
}

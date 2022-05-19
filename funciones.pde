float posY= 1, tamLetra= 30, 
posY2= 1, posTexto2 =1, tamLetra2 = 30, posTexto2X = 100, 
posTexto3=1 , posY3 =1, 
posY4 =1, texto4 =1, 
posY5=1 , img5 = 400, text5=1, text5X = -400, 
finalTitulo=1;
String dirigidoPor = "Dirigido por", producidoPor = "Producido por", personajes = "Personajes", productoresEjecutivos1 = "ANDY WACHOWSKI", 
productoresEjecutivos2 = "LARRY WACHOWSKI";
color colorBlanco=(255);
color colorVerde=(#00FF00);
PImage morpheus, pastilla, neoFondo;

/*uso de funciones para organizar el codigo, sin pasar info por parametros*/

/*primera pantalla*/

  void primeraPantalla(){
  background(0);
   /*numeros de fondo en la pantalla de inicio*/
  textSize(tamLetra-10);
  fill(colorVerde);
  text(mouseX, 400, random(0,400));
  text(mouseX, 250, random(0,400));
  text(mouseX, 200, random(0,400));
  text(mouseY, 100, random(0,400));
  text(mouseX, 50, random(0,400));
  fill(0,255,0);
  text(mouseX, 350, random(0,400));
  text(mouseY, 300, random(0,400));
  text(mouseX, 150, random(0,400));
  text(mouseX, 0, random(0,400));
  
  /*rectangulo de fondo al titulo */
  fill(0);
  rect(114, 180, 160, 30);
  
  /*titulo*/
  fill(colorBlanco);
  textSize(tamLetra+10);
   if(posY >= 100){
    text("MATRIX", 114, 200);   
    }
 
  /* efecto al titulo */
   if (posY > 200 && posY < 300 || posY > 350 && posY < 400){
   colorBlanco = color(random(0,255));
   colorVerde= (#116219);
   } else {
   colorBlanco = (255);
   colorVerde=(#00FF00);
   }
 
   if (posY > 550){
   finalTitulo = 2;  
   }
   posY++;
   cursorAnimacion();
   }





  /*segunda pantalla*/
   void segundaPantalla(){   
   background(0); 
   /*letras de fondo*/
   textSize(tamLetra-8);
   colorVerde= color(#083612);
   fill(colorVerde);
   text(mouseX, 50, random(0,400));
   text(mouseX+34, 250, random(0,400));
   text(mouseY, 300, random(0,400));
   fill(0,255,0);
   text(mouseX, 0, random(0,400));
   text(mouseX+1, 400, random(0,400));
   text(mouseX, 350, random(0,400));
   text(mouseY+3, 100, random(0,400));
  
   /*texto*/
   fill (colorBlanco);
   textSize(tamLetra);
   textSize(tamLetra);
   text( dirigidoPor, posTexto2X, posTexto2);
  
  /*efecto del texto */
    if (posTexto2 >= width/2){
    posTexto2 = width/2;
    colorBlanco = color(random(0,255));
    }
   
   if (posY2 >= 400){
     tamLetra= (20);
     posTexto2X =50;
     dirigidoPor = "THE WACHOWSKI BROTHERS";
     colorBlanco = color(random(0,255));
   }
   if (posY2 >= 500){
     dirigidoPor = "THE WACHOWSKI BROTHERS";
     colorBlanco = (255);
   }
   if (posY2 > 650){
    finalTitulo = 3; 
    tamLetra=30;
   }
   
   /*variables usadas*/
   posTexto2++;
   posY2++;
   cursorAnimacion();
}




 /*tercer pantalla*/
   void tercerPantalla() {
   background(0);
    /*numeros de fondo*/
    textSize(tamLetra);
    fill(colorVerde);
    text(mouseX, random(0,400), 380);
    text(mouseX, random(0,400), 200); 
    fill(0, 255, 0);
    text(mouseX, random(0,400), 240);
    text(mouseX, random(0,400), 100);   
    textSize(tamLetra);
    
    /*texto*/
    fill(colorBlanco);    
    text(producidoPor, 85, posTexto3);
    
    /*desaparece el producidoPor*/
    if (posY3 > 230 && posY3 < 280){
      producidoPor = " ";
    }
    
    /*cambio color en numeros*/
    
    if(posTexto3 >= 140 && posTexto3 < 175){
      fill(255,0,0);
      text(mouseX, random(0,400), 200);
      text(mouseX, random(0,400), 200);
      fill(0,0,255);
      text(mouseX, random(0,400), 200);
    }
  /*aparece el productor*/
  
   if(posTexto3 >= 175){  
      posTexto3 = 175;    
      text("JOEL SILVER", 95, posTexto3+25); 
    }
        
   if(posY3 > 450){
      colorBlanco = color(random(0,255));
    } 
 
   if (posY3 > 500){
   finalTitulo = 4;  
    }
    
   posTexto3++;
   posY3++;
   cursorAnimacion();
   }
   
   
   

  /*cuarta pantalla*/
  void cuartaPantalla() {
  background(0);
  colorBlanco = (255);
  /*imagen de fondo*/
   neoFondo = loadImage("matrix4.jpg");
   image(neoFondo, 0, 0, 600, 400); 
   textSize(tamLetra); 
   
   /*texto, actores y personajes*/
   if(posY4 > 10){  
    fill(255);
    texto4++;
    text(personajes, texto4 ,80);   
   if(texto4 > 30){
     texto4= 30;  
    }  
   }
   fill(colorBlanco);

   textSize(tamLetra-2);
   if(posY4 > 100 && posY4 < 220){
    text("Neo", 30, 110);  
    text("Morfeo", 30, 160);     
   }

  if ( posY4 >120 && posY4 < 220){
   text("por Keanu Reeves", 30, 130);
   text("por Laurence Fishburne", 30, 180);
   if(posY4 > 160 && posY4< 220){
  colorBlanco=color(random(0,255));
  }
   } 
  
  
  


  if( posY4 >220 && posY4 < 320){ 
   text("Trinity", 30, 110);
   text("por Carrie-Anne Moss", 30, 130);
   text("Agente Smith", 30, 160);
   text("por Hugo Weaving", 30, 180);
  if (posY4 > 260 && posY4< 320){
  colorBlanco=color(random(0,255));
  }
  } 
  

  if( posY4 > 320 && posY4 < 420){ 
   text("Oraculo", 30, 110);
   text("por Gloria Foster", 30, 130);
   text("Cypher", 30, 160);
   text("por Joe Pantoliano", 30, 180);
   if (posY4 > 360 && posY4< 420){
   colorBlanco=color(random(0,255));
  }
  } 
 
  
  
  if( posY4 > 420 && posY4 < 520){
   text("Agente Brown", 30, 110);
   text("por Paul Goddard", 30, 130);
   text("Agente Jones", 30, 160);
   text("Robert Taylor", 30, 180);
  } 

  if (posY4 > 460 && posY4< 600){
  colorBlanco=color(random(0,255));
  }

  if (posY4 > 600){
  finalTitulo = 5;  
  }
  
  
  cursorAnimacion();
  posY4++;

  }
 
 
 
 
 /*quinta pantalla*/
  void quintaPantalla(){
    
  background(0); 
  /*numros de fondo*/
  colorVerde= (#116219);
  fill(colorVerde);
  textSize(tamLetra-10);
  fill(colorVerde);
  text(mouseX, 250, random(0,400));
  text(mouseX, 200, random(0,400));
  text(mouseY, 100, random(0,400));
  text(mouseX, 50, random(0,400));
  fill(0,255,0);
  text(mouseX, 350, random(0,400));
  text(mouseY, 300, random(0,400));
  text(mouseX, 150, random(0,400));
  text(mouseX, 0, random(0,400));
    
    /*imagen*/
   if(posY5 > 30){
   img5 = img5-2;
   morpheus = loadImage("morpheus2.png");
   image(morpheus, 0, img5, 400, 400);  
   fill(colorBlanco);
   /* imagen que sube*/
    if(img5 <= 80){
    img5= 80; 
    }
   }
   /*texto que baja*/
     fill(colorBlanco);
   textSize(tamLetra-1);
   text("Productores ejecutivos", 10, text5-10);
   textSize(tamLetra-5);
   /*texto que sale del costado*/
   text(productoresEjecutivos1, text5X, text5+10);
   text(productoresEjecutivos2, text5X, text5+30);
    if (text5 >= 100){
     text5 = 100;
     }    
  
    if(text5X >= 15){
    text5X = 15;        
     }
     
     /* efecto y cambio de texto*/
     if(posY5 >= 360 && posY5 < 400){
     colorBlanco = (color(random(0,255)));
     }
     if(posY5 >= 400) {
     colorBlanco = (255);
     productoresEjecutivos1 =  "ERWIN STOFF";
     productoresEjecutivos2 = "BRUCE BERMAN"; 
     }
    
    /*efecto del final*/
    if(posY5 > 600){
      background (color(random(0,255)));
      text("the end", 150, 200);
      if(posY5 >= 750){
        background(0);
      }
    }
   cursorAnimacion();
   posY5++;   
   text5++;
   text5X= text5X+2;
   
  
  }

  /*cambiar de pagina*/
   void mousePressed (){
  if (mouseX > width/2 && finalTitulo != 5){
    finalTitulo++;
  } 
  if (mouseX < width/2 && finalTitulo != 1){
    finalTitulo--;
   } 
  }
  
  /*animacion del cursor */
  void cursorAnimacion(){
    if(mouseX >200){
    pastilla = loadImage("pastillaRoja.PNG");
   image(pastilla, mouseX, mouseY, 30, 30);
   }
   if(mouseX < 200){
    pastilla = loadImage("pastillaAzul.PNG");
   image(pastilla, mouseX, mouseY, 30, 30);
   }
  }

int e;
int M1, M2, M3, M4, M5;
int tiempoGuardado; 

PImage pinoccio1, pinoccio2, pinoccio3, pinoccio4, pinoccio5, pinoccio6;
PFont fuente2;

void setup() {
  size( 640, 480 );
  textAlign( CENTER, CENTER );
  
  pinoccio1 = loadImage("pinoccio1.jpg");
  pinoccio2 = loadImage("pinoccio2.jpg");
  pinoccio3 = loadImage("pinoccio3.jpg");
  pinoccio4 = loadImage("pinoccio4.jpg");
  pinoccio5 = loadImage("pinoccio5.jpg");
  pinoccio6 = loadImage("pinoccio6.jpg");
  
  fuente2 = loadFont("fuente1.vlw");

  reiniciarVariables(); 
}

void draw() {
  background( 80 );  
  
  // PANTALLA INICIAL
  if ( e == 0 ) {
    image(pinoccio1, 0, 0, width, 400); 
    dibujarBoton("Iniciar", 225, 415, 190, 50);
  }
  
  // PANTALLA 1
  else if ( e == 1 ) {
    image(pinoccio2, 0, 0, width, 400);
    
    fill(255);
    textFont(fuente2);
    textSize(16);
    text("El inicio: Geppetto, muy triste por perder a su hijo, talla un muñeco\n de madera junto a su tumba. Un espíritu mágico le da vida\n y le encarga a Sebastian J. Grillo que sea su conciencia.", M1, 435 );
    
    if (M1 < 320){ M1 += 3; }
    chequearTiempo(2);
  }
  
  // PANTALLA 2
  else if ( e == 2 ) {
    image(pinoccio3, 0, 0, width, 400);

    fill(255);
    textFont(fuente2);
    textSize(16);
    text("El Circo: Pinocho quiere ayudar a Geppetto a ganar plata, pero el Conde\n Volpe lo engaña para su circo. Ahí se hace amigo del mono\n Spazzatura y se da cuenta de que no puede morir.", M2, 435 );
    
    if (M2 < 320){ M2 += 3; }
    chequearTiempo(3);
  }
  
  // PANTALLA 3
  else if ( e == 3 ) {
    image(pinoccio4, 0, 0, width, 400);

    fill(255);
    textFont(fuente2);
    textSize(16);
    text("La Guerra: Lo mandan a un campamento militar porque el gobierno\n lo quiere usar de soldado. Pinocho se hace amigo de los otros chicos\n y se rebelan antes de que bombardeen el lugar.", M3, 435 );
    
    if (M3 < 320){ M3 += 3; }
    chequearTiempo(4);
  }
  
  // PANTALLA 4
  else if ( e == 4 ) {
    image(pinoccio5, 0, 0, width, 400);

    fill(255);
    textFont(fuente2);
    textSize(16);
    text("El Monstruo: Geppetto va a buscar a Pinocho y se lo traga un pez gigante.\n Pinocho se deja tragar a propósito para salvarlo, y arman un\n plan con explosivos para poder escapar desde adentro.", M4, 435 );
    
    if (M4 < 320){ M4 += 3; }
    chequearTiempo(5);
  }
  
  // PANTALLA 5
  else if ( e == 5 ) {
    image(pinoccio6, 0, 0, width, 400);

    fill(255);
    textFont(fuente2);
    textSize(16);
    text("El Final: Para salvar a su papá, Pinocho rompe las reglas del más allá\n y pierde su inmortalidad. Se salva con lo justo, pero aprende que la vida\n es hermosa y tiene sentido justamente porque algún día termina.", M5, 435 );
    
    if (M5 < 320){ M5 += 3; }
    chequearTiempo(6); 
  }
  
  // PANTALLA 6
  else if ( e == 6 ) {
    image(pinoccio6, 0, 0, width, 400); 
    dibujarBoton("Reiniciar", 225, 415, 190, 50);
  }
}


void reiniciarVariables() {
  e = 0;
  M1 = 0; M2 = 0; M3 = 0; M4 = 0; M5 = 0;
}

void chequearTiempo(int siguienteEstado) {
  if (frameCount - tiempoGuardado >= 480) {
    e = siguienteEstado;
    tiempoGuardado = frameCount; 
    
  }
}
 
void dibujarBoton(String textoBoton, int x, int y, int ancho, int alto) {
  fill(0, 150, 250); 
  stroke(255);
  rect(x, y, ancho, alto);
  
  fill(255);
  textSize(25);
  text(textoBoton, x + (ancho/2), y + (alto/2) - 3); 
   
}

void mousePressed() {
  if (e == 0) {
    if (mouseX > 225 && mouseX < (225+190) && mouseY > 415 && mouseY < 465) {
      e = 1;
      tiempoGuardado = frameCount; 
    }
  }
  else if (e == 6) {
    if (mouseX > 225 && mouseX < (225+190) && mouseY > 415 && mouseY < 465) {
      reiniciarVariables();
    }
  }
}

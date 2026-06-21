PImage arte;
int x;
int y;
int tam;
int rotar1;
int rotar2 ;
int rotar3 ;
int rotar4;
color col1,col2;

void setup() {
  x=400;
  y=0;
  tam=200;
  rotar1=0;
  rotar2=90;
  rotar3=180;
  rotar4=270;
  col1= color(0);
  col2=color(255);
  size(800, 400);
  arte = loadImage("32.png");
}

void draw() {
  background(180);
  image(arte,0,0,400,400);
  dibujarBloqueB(400,0,tam,rotar2,col1,col2);
  dibujarBloqueN(400,0,tam,rotar1,col1,col2);
  dibujarBloqueB(400,0,tam,rotar4,col1,col2);
  dibujarBloqueN(400,0,tam,rotar3,col1,col2);
}

void dibujarBloqueB(int x, int y, int tam, int rotar,color col1, color col2) {
  push();
  translate(x + tam, y + tam);
  rotate(radians(rotar));

  for (int i = 0; i < 17; i++) {
    if (parIn(i)) {
      fill(col1);
    } else {
      fill(col2);
    }

    noStroke();
    rect(0, 0, tam, tam);
    tam = tam - 10;
  }

  rectMode(CORNER);
  pop();
}

void dibujarBloqueN(int x, int y, int tam, int rotar, color col1, color col2) {
  push();
  translate(x + tam, y + tam);
  rotate(radians(rotar));

  for (int i = 0; i < 17; i++) {
    if (parIn(i)) {
      fill(col2);
    } else {
      fill(col1);
    }

    noStroke();
    rect(0, 0, tam, tam);
    tam = tam - 10;
  }

  rectMode(CORNER);
  pop();
}

boolean parIn(int x){
  if(x % 2 == 0){
  return true;
  }
  else{
  return false;
  }
}

void mousePressed(){
  if(mouseX>width/2 ){
    rotar1=rotar1+90;
    rotar2=rotar2+90;
    rotar3=rotar3+90;
    rotar4=rotar4+90;
}
}

void keyPressed(){
 if (keyPressed){ 
   if (key== '1'){   
    col1= color(255,255,0);
    }
     if (key== '2' ){   
    col1=color(255,0,255);
    }
    if (key== '3' ){   
    col1=color(255,0,0);
    }
    if (key== '4' ){   
    col2=color(0,255,0);
    }
    if (key== '5' ){   
    col2=color(124,200,15);
    }
    if (key== '6' ){   
    col2=color(130,255,0);
    }
    if (key== 'r' ){   
    variablesIniciales();
    }
}
}

void variablesIniciales(){
  x=400;
  y=0;
  tam=200;
  rotar1=0;
  rotar2=90;
  rotar3=180;
  rotar4=270;
  col1= color(0);
  col2=color(255);
}


//VIDEO
//https://www.youtube.com/watch?v=NIsUQB_Nt4I

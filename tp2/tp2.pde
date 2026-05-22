int e;
int M1x, M2x, M3y, M4y, M5x;

PImage TaxiDriver0;
PImage TaxiDriver1;
PImage TaxiDriver2;
PImage TaxiDriver3;
PImage TaxiDriver4;
PImage TaxiDriver5;

PFont fuente;

void setup() {

  size(640, 480);

  textAlign(CENTER, CENTER);

  TaxiDriver0 = loadImage("TaxiDriver0.jpg");
  TaxiDriver1 = loadImage("TaxiDriver1.jpg");
  TaxiDriver2 = loadImage("TaxiDriver2.jpg");
  TaxiDriver3 = loadImage("TaxiDriver3.jpg");
  TaxiDriver4 = loadImage("TaxiDriver4.jpg");
  TaxiDriver5 = loadImage("TaxiDriver5.jpg");

  fuente = createFont("TaxiDriver.ttf", 16);
  textFont(fuente);

  e = 0;

  M1x = width;
  M2x = -400;
  M3y = -100;
  M4y = height + 50;
  M5x = width;
}

void draw() {

  if (e == 0) {

    background(80);

    image(TaxiDriver0, 0, 0, width, height);

    dibujarBoton();

  } else if (e == 1) {

    background(80);

    image(TaxiDriver1, 0, 0, width, 400);

    fill(90, 0, 0);
    rect(-20, 385, 700, 120);

    fill(255);
    textSize(16);

    text("Travis Bickle trabaja como taxista nocturno en una Nueva York peligrosa y decadente. La soledad y el insomnio comienzan a afectar su mente.", M1x - 300, 405, 600, 60);

    if (M1x > 320) {
      M1x -= 3;
    }

    if (frameCount == (60 * 10)) {
      e = 2;
    }

  } else if (e == 2) {

    background(80);

    image(TaxiDriver2, 0, 0, width, 400);

    fill(90, 0, 0);
    rect(-20, 385, 700, 120);

    fill(255);
    textSize(16);

    text("Mientras recorre las calles de la ciudad, Travis se obsesiona con la violencia, la corrupción y las personas que considera responsables del caos.", M2x - 300, 405, 600, 60);

    if (M2x < 320) {
      M2x += 3;
    } else {
      M2x = 320;
    }

    if (frameCount == (60 * 20)) {
      e = 3;
    }

  } else if (e == 3) {

    background(80);

    image(TaxiDriver3, 0, 0, width, 400);

    fill(90, 0, 0);
    rect(-20, 385, 700, 120);

    fill(255);
    textSize(16);

    text("Intentando cambiar su vida, Travis busca acercarse a Betsy, una trabajadora de campaña política, pero la relación termina fracasando.", 20, M3y - 30, 600, 60);

    if (M3y < 435) {
      M3y += 3;
    }

    if (frameCount == (60 * 30)) {
      e = 4;
    }

  } else if (e == 4) {

    background(80);

    image(TaxiDriver4, 0, 0, width, 400);

    fill(90, 0, 0);
    rect(-20, 385, 700, 120);

    fill(255);
    textSize(16);

    text("Cada vez más aislado y frustrado, Travis comienza a entrenarse físicamente, consigue armas y planea actuar por cuenta propia.", 20, M4y - 30, 600, 60);

    if (M4y > 435) {
      M4y -= 3;
    }

    if (frameCount == (60 * 40)) {
      e = 5;
    }

  } else if (e == 5) {

    background(80);

    image(TaxiDriver5, 0, 0, width, 400);

    fill(90, 0, 0);
    rect(-20, 385, 700, 120);

    fill(255);
    textSize(16);

    text("Finalmente, Travis desata un violento enfrentamiento para rescatar a Iris, una joven explotada por criminales, convirtiéndose inesperadamente en héroe.", M5x - 300, 405, 600, 60);

    if (M5x > 320) {
      M5x -= 3;
    }

    if (frameCount == (60 * 45)) {
      e = 6;
    }

  } else if (e == 6) {

    background(80);

    image(TaxiDriver5, 0, 0, width, 400);

    fill(90, 0, 0);
    rect(-20, 385, 700, 120);

    fill(255);
    textSize(16);

    text("Finalmente, Travis desata un violento enfrentamiento para rescatar a Iris, una joven explotada por criminales, convirtiéndose inesperadamente en héroe.", 20, 405, 600, 60);

    dibujarBoton();
  }
}

void mouseClicked() {

  if (mouseButton == LEFT) {

    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
        mouseY > height/2 - 20 && mouseY < height/2 + 20) {

      if (e == 0) {

        e = 1;
        frameCount = 0;

      } else if (e == 6) {

        e = 0;
        frameCount = 0;

        M1x = width;
        M2x = -400;
        M3y = -100;
        M4y = height + 50;
        M5x = width;
      }
    }
  }
}

void dibujarBoton() {

  fill(180, 0, 0);

  rect(width/2 - 100, height/2 - 20, 200, 40, 15);

  fill(255);

  textSize(16);

  if (e == 0) {

    text("Iniciar", width/2, height/2);

  } else if (e == 6) {

    text("Volver al inicio", width/2, height/2);
  }
}

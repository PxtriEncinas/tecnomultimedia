//Nombre: Encinas Noelia Patricia
//Legajo: 94726/8
//Comision 4
//TP#3 Aventura Grafica
//Video: https://youtu.be/tAwo3JtZUjg?si=u1cD9fYIBTcjCtXU

PImage [] pantalla = new PImage [14];
PImage boton;
int Escena = ImagenDeFondo();

void setup() {
  size(600, 600);
  background(random(255));
  for (int e = 0; e<14; e++) {
    pantalla[e]= loadImage("p" + e + ".png");
  }
  boton = loadImage("boton.png");
}

void draw() {
  misEscenas();
  //println("x:", mouseX, "y;", mouseY);
}

void mousePressed() {
  Aventura();
}

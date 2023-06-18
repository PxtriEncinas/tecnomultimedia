//Nombre: Encinas Noelia Patricia
//Legajo: 94726/8
//Comision 4
//TP#2 Funciones y Ciclos FOR
//Video: https://youtu.be/dkrw6u4l_DY

int cant = 100;
int tam;
int lineaH = 56;
int lineaV = 70;
int Incremento = IncrementoRando();
PImage art;

void setup() {
  size(800, 400);
  art = loadImage("op.png");
  tam = width/cant;
}


void draw() {
  background(255);

  fondoPantalla();
  lineas();
  println("x:", mouseX, "y;", mouseY);
  image(art, 0, 0, 400, 400);
}
void mouseClicked() {
  lineaH = lineaV += Incremento; //olvide mencionar en el video que aqui fusiones el retorno de un numeror amdom en que cad avez que vuelva abei la pantalla sera diferen el incremento.
}

void keyPressed() {
  if (key == 'r') {
    lineaH = 56;
    lineaV = 70;
  }
}

//Nombre: Encinas Noelia Patricia
//Legajo: 94726/8
//Comision 4
//TP#1 Vehiculo

PImage Imagen1, Imagen2, Imagen3, Boton;
int pantalla = 1;
int segundos = 0;

PFont Fuente1, Fuente2, Fuente3;
float EfectoAumento;
int EfectoMovimiento;
float EfectoTransparencia;

void setup() {
  size(640, 480);

  Imagen1 = loadImage("lancha1.jpg");
  Imagen2 = loadImage("lancha2.jpg");
  Imagen3 = loadImage("lancha3.jpg");
  Boton = loadImage("boton.png");

  Fuente1 = loadFont("BellMTBold.vlw");
  Fuente2 = loadFont("BellMTItalic.vlw");
  Fuente3 = loadFont("BerlinSansFB-Reg.vlw");

  EfectoAumento = 38;
  EfectoMovimiento = 530;
  EfectoTransparencia = 1;
}

void draw() {
  background(0);
  if (frameCount % 60 == 0) {
    segundos = segundos + 1;
  }

  if (segundos <= 2) {
    image(Imagen1, 0, 0, 640, 480);

    textFont(Fuente1, EfectoAumento);
    textAlign(CENTER, CENTER);
    fill(255, 0, 0);
    text("Lancha Pequeña Marítima RAN \nProyecto RHIN \nArmada de Chile \nPropuesta LATINAVAL CHILE", (width/2), (height/2));

    EfectoAumento = EfectoAumento - 0.1;
  } else if (segundos <= 4) {
    pantalla = 2;
    image(Imagen2, 0, 0, 640, 480);
    textFont(Fuente2, 30);
    textAlign(CENTER, CENTER);
    fill(255);
    text("Diseño australiano Gavin Mair \nen uso por la marina Inglesa y Australiana \nCertificación oceánica MCA clase 2 \nAltos niveles de estabilidad. Defensas perimetral \nbrinda flotabilidad adicional.", (width/2), EfectoMovimiento);

    EfectoMovimiento = EfectoMovimiento - 3;
  } else if (segundos > 4) {
    pantalla = 3;
    image(Imagen3, 0, 0, 640, 480);

    fill(0, EfectoTransparencia);
    textFont(Fuente3, 30);
    textAlign(CENTER, CENTER);
    text("Ventajas del uso turbina ULTRAJET: \nPuede navegar sin peligro en zonas \ncon troncos u otros objetos flotante. \nCualquier obstrucción de la turbina se \naccede desde el interior de la lancha. \nSe puede reparar sin sacar la lancha \ndel agua por el propio personal. \nProveedor militar", (width/2), (height/2));

    EfectoTransparencia = EfectoTransparencia + 3.5;

    image(Boton, 530, 420, 100, 40);
  }
}

void mousePressed() {

  if (segundos > 4 && pantalla == 3 && mouseX > 530 && mouseX < 628 && mouseY > 420 && mouseY < 460) {
    segundos = 0;
    pantalla = 1;
    EfectoAumento = 38;
    EfectoMovimiento = 530;
    EfectoTransparencia = 1;
  }
}

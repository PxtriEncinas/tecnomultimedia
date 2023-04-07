//Nombre: Encinas Noelia Patricia
//Legajo: 94726/8
//Comision 4
//TP#0 Vehiculo


PImage auto;

void setup() {
  size(800, 400);
  auto = loadImage("auto.jpg");
  background(117, 142, 203);
}

void draw() {

  background(117, 142, 203);
  noStroke();
  fill(255, 50);
  rect(400, 111, 800, 200);
  rect(400, 140, 800, 200);
  fill(147, 149, 155);
  triangle(360, 190, 410, 161, 447, 190);
  fill(255, 180);
  ellipse(575, 50, 40, 20);
  ellipse(505, 90, 120, 30);
  ellipse(468, 65, 90, 30);
  ellipse(640, 130, 100, 50);
  ellipse(788, 150, 100, 50);
  fill(255, 60);
  ellipse(800, 63, 450, 160);
  fill(11, 147, 0);
  rect(0, 186, 800, 235);
  fill(255, 50);
  rect(400, 160, 800, 200);
  fill(206, 206, 206);
  rect(0, 240, 800, 243);
  fill(11, 147, 0);
  rect(0, 253, 800, 400);
  fill(140, 188, 22);
  rect(0, 337, 800, 400);
  //auto
  fill(149, 30, 30);
  quad(428, 166, 790, 148, 800, 230, 424, 230);
  quad(600, 118, 698, 123, 770, 150, 540, 162);
  fill(0);
  quad(600, 120, 698, 126, 765, 155, 550, 162);
  //vidrio
  fill(134, 175, 175);
  quad(600, 122, 635, 124, 625, 155, 555, 159);
  quad(645, 124, 695, 128, 710, 155, 645, 155);
  quad(700, 129, 730, 142, 735, 154, 716, 154);
  triangle(734, 143, 755, 152, 740, 153);
  //llantas
  fill(0);
  ellipse(498, 222, 60, 60);
  ellipse(734, 222, 60, 60);
  //luces
  fill(255);
  quad(429, 170, 456, 168, 443, 182, 429, 180);
  fill(222, 4, 19);
  quad(765, 158, 793, 158, 795, 175, 765, 165);
  image(auto, 0, 0, 400, 400);
}

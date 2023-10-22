//Nombre: Encinas Noelia Patricia
//Legajo: 94726/8
//Comision 4
//TP#5
//Video: https://youtu.be/O-1KVl-3wSc?si=7T3xPrxn8el639f4
let fondo, ImgInstrucciones, manzana, paleta, ladri;
let mostrarInstrucciones = true;
function preload() {
  fondo = loadImage("assets/fondo.png");
  ImgInstrucciones = loadImage("assets/ins.png");
  manzana = loadImage("assets/manzana.png");
  paleta = loadImage("assets/paleta.png");
  ladri = loadImage("assets/ladrillo.png");
}
function setup() {
  createCanvas(700, 700);
  juego = new Juego();
}

function draw() {
  background(0);
  if (mostrarInstrucciones) {
    image(ImgInstrucciones, 0, 0, width, height);
  } else {
    juego.dibujar();
    juego.actualizar();
  }
  if (juego.perdiste) {
    textSize(50);
    fill(255);
    text("Perdiste", width / 2 - 100, height / 2);
  }
}

function keyPressed() {
  if ( key === ' ') {
    mostrarInstrucciones = false;
  }
}

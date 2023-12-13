//Nombre: Encinas Noelia Patricia
//Legajo: 94726/8
//Comision 4
//TP#4
let pelotaX, pelotaY, pelotaVelX = 3, pelotaVelY = -3;
let paletaX, paletaY, paletaAncho = 90, paletaAltura = 15;
let filaLadri = 5, columnaLadri = 10;
let ladrilloAncho, ladrilloAltura = 25;
let ladri = [];
let jugando = false;
let VIDAS = 3;
let PUNTOS = 0;

function setup() {
  createCanvas(600, 600);

  reiniciarJ();
}

function draw() {
  background(0);

  if (!jugando) {
    pantallaDeInicio();
  } else {
    MovimientoPelota();
    compruebaChoque();
    MovimientoPaleta();
    ladrillos();
    paleta();
    pelota();
    infoJuego();

    if (VIDAS <= 0) {
      juegoF();
    } else if (PUNTOS === filaLadri * columnaLadri * 10) {
      victoria();
    }
  }
}


function mousePressed() {
  interracion();
}
function keyPressed() {
  if (VIDAS <= 0 && key === ' ') {
    reiniciarJ();
  } else if (PUNTOS === filaLadri * columnaLadri * 10 && key === ' ') {
    reiniciarJ();
  }
  if (key === 'r') {
    reiniciarJ();
  }
}

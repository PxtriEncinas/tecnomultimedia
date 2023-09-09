let ini = 0;
let miImagen = [];
function preload() {
  for (let e = 0; e<5; e++) {
    miImagen[e] = loadImage('assets/i' + e +'.png');
  }
}

function pantallaDeInicio() {
  if (ini == 0) {
    image(miImagen[0], 0, 0, 600, 600  );
  } else if (ini == 1) {
    image(miImagen[1], 0, 0, 600, 600);
  }
}
function interracion() {
  if (ini  == 0 && mouseX > 210 && mouseX < 360 && mouseY > 340 && mouseY < 390) {
    jugando = true;
  } else  if (ini  == 0 && mouseX > 198 && mouseX < 373 && mouseY > 400 && mouseY < 450) {
    ini = 1;
  } else if (ini  == 1 && mouseX > 215 && mouseX < 390 && mouseY > 497 && mouseY < 547) {
    ini = 0;
  }
}

function juegoF() {
  image(miImagen[3], 0, 0, 600, 600);
}

function victoria() {
  image(miImagen[2], 0, 0, 600, 600);
}

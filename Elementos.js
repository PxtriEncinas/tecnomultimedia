


function ladrillos() {
  for (let i = 0; i < filaLadri; i++) {
    for (let j = 0; j < columnaLadri; j++) {
      if (ladri[i][j] === 1) {
        let brickX = j * ladrilloAncho;
        let brickY = i * ladrilloAltura;
        fill(255, 0, 160 );
        rect(brickX, brickY, ladrilloAncho, ladrilloAltura);
      }
    }
  }
}

function paleta() {
  fill(255);
  rect(paletaX, paletaY, paletaAncho, paletaAltura);
}

function pelota() {
  fill(255);
  ellipse(pelotaX, pelotaY, 30, 30);
}

function infoJuego() {
  fill(255);
  textSize(20);
  text(VIDAS, 50, 560);
  text(PUNTOS, 530, 560);
  image(miImagen[4], 0, 550, 600, 50);
}

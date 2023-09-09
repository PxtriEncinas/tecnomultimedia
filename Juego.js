function reiniciarJ() {
  pelotaX = width / 2;
  pelotaY = height - 30;
  paletaX = width / 2 - paletaAncho / 2;
  paletaY = height - 20;
  ladrilloAncho = width / columnaLadri;
  jugando = false;
  VIDAS = 3;
  PUNTOS = 0;

  for (let i = 0; i < filaLadri; i++) {
    ladri[i] = [];
    for (let j = 0; j < columnaLadri; j++) {
      ladri[i][j] = 1;
    }
  }
}

function MovimientoPaleta () {
  paletaX = mouseX - paletaAncho / 2;
}

function MovimientoPelota() {
  pelotaX += pelotaVelX;
  pelotaY += pelotaVelY;

  if (pelotaX <= 0 || pelotaX >= width) {
    pelotaVelX *= -1;
  }

  if (pelotaY <= 0) {
    pelotaVelY *= -1;
  }

  if (pelotaY >= height) {
    resetearPelota();
  }

  if (pelotaY + 10 >= paletaY && pelotaX >= paletaX && pelotaX <= paletaX + paletaAncho) {
    pelotaVelY *= -1;
  }
}

function compruebaChoque() {
  for (let i = 0; i < filaLadri; i++) {
    for (let j = 0; j < columnaLadri; j++) {
      if (ladri[i][j] === 1) {
        let brickX = j * ladrilloAncho;
        let brickY = i * ladrilloAltura;

        if (pelotaX >= brickX && pelotaX <= brickX + ladrilloAncho && pelotaY >= brickY && pelotaY <= brickY + ladrilloAltura) {
          pelotaVelY *= -1;
          ladri[i][j] = 0;
          PUNTOS += 10;
        }
      }
    }
  }
}


function resetearPelota() {
  pelotaX = width / 2;
  pelotaY = height - 30;
  pelotaVelX = 3;
  pelotaVelY = -3;
  VIDAS--;
}

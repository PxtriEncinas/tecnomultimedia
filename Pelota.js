class Pelota {
  constructor() {
    this.pelota = manzana;
    this.posX = 300;
    this.posY = 620;
    this.ancho = 40;
    this.alto = 42;
    this.velX = 3;
    this.velY = -3;
    this.paleta = new Paleta();
    this.puntos = 0;
    this.CantVidas = 3;
  }
  mover() {
    this.posX += this.velX;
    this.posY += this.velY;

    if (this.posX <= 0 || this.posX >= width - 20) {
      this.velX *= -1;
    }

    if (this.posY <= 0) {
      this.velY *= -1;
    }

    if (this.posY >= height) {
      this.resetear();
    }
  }
  dibujar() {
    image(this.pelota, this.posX, this.posY, this.ancho, this.alto);
  }
  resetear() {
    this.posX = 300;
    this.posY = 620;
    this.velX = 3;
    this.velY = -3;
    this.CantVidas --;
  }

  dibujarVidas() {
    fill(255);
    textSize(30);
    text(this.CantVidas, 60, 640);
  }
  dibujarPuntos() {
    fill(255);
    textSize(30);
    text(this.puntos, 623, 640);
  }
}

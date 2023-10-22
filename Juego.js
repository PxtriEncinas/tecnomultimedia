class Juego {
  constructor() {
    this.fondo = fondo;
    this.ladrillos = [];
    this.paleta = new Paleta();
    this.pelota = new Pelota();
    this.iniciarLadrillos();
    this.perdiste = false;
  }
  iniciarLadrillos() {
    let filaLadri = 5;
    let columnaLadri = 10;
    let ladrilloAncho = width / columnaLadri;
    let ladrilloAltura = 25;

    for (let i = 0; i < filaLadri; i++) {
      for (let j = 0; j < columnaLadri; j++) {
        let x = j * ladrilloAncho;
        let y = i * ladrilloAltura;
        this.ladrillos.push(new Ladrillo(x, y, ladrilloAncho, ladrilloAltura));
      }
    }
  }
  actualizar() {
    if (!this.perdiste) {
    this.pelota.mover();
    this.paleta.mover();
    this.comprobarColisionPaleta();
    this.comprobarColisionLadrillos(); 
    }  if (this.pelota.CantVidas === 0) {
      this.perdiste = true;
    }
  }
  dibujar() {
    this.dibujarFondo();
    this.ladrillos.forEach((ladrillo) => ladrillo.dibujar());
    this.paleta.teclaPresionada();
    this.paleta.dibujar();
    this.pelota.dibujar();
    this.pelota.dibujarVidas();
    this.pelota.dibujarPuntos();
  }
  dibujarFondo() {
    image(this.fondo, 0, 0, width, height);
  }

 comprobarColisionPaleta() {
    if (
      this.pelota.posY + this.pelota.alto >= this.paleta.y &&
      this.pelota.posY <= this.paleta.y + this.paleta.alto &&
      this.pelota.posX + this.pelota.ancho >= this.paleta.x &&
      this.pelota.posX <= this.paleta.x + this.paleta.ancho
    ) {
        this.pelota.velY *= -1;
    }
  }

  comprobarColisionLadrillos() {
    for (let i = this.ladrillos.length - 1; i >= 0; i--) {
      const ladrillo = this.ladrillos[i];
      if (ladrillo.visible) {
        if (
          this.pelota.posY <= ladrillo.y + ladrillo.altura &&
          this.pelota.posY + this.pelota.alto >= ladrillo.y &&
          this.pelota.posX + this.pelota.ancho >= ladrillo.x &&
          this.pelota.posX <= ladrillo.x + ladrillo.ancho
          ) {
          this.pelota.velY *= -1;
          ladrillo.visible = false;
          this.pelota.puntos += 10;
        }
      }
    }
  }
}

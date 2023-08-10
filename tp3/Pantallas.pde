void misEscenas() {
  if (Escena == 0) {
    image(pantalla[0], 0, 0, 600, 600);
    botonesDelMenu();
  } else if (Escena == 1) {
    image(pantalla[1], 0, 0, 600, 600);
    botonContinuar();
    textSize(18);
    text(texto[0], 15, 395);
  } else if (Escena == 2) {
    image(pantalla[2], 0, 0, 600, 600);
    botonContinuar();
    textSize(18);
    text(texto[1], 15, 390);
  } else if (Escena == 3) {
    image(pantalla[3], 0, 0, 600, 600);
    botonesDeDecisiones();
    textSize(18);
    text(texto[2], 15, 395);
  } else if (Escena == 4) {
    image(pantalla[4], 0, 0, 600, 600);
    botonContinuar();
    textSize(18);
    text(texto[3], 15, 415);
  } else if (Escena == 5) {
    image(pantalla[5], 0, 0, 600, 600);
    botonContinuar();
    textSize(18);
    text(texto[4], 15, 400);
  } else if (Escena == 6) {
    image(pantalla[6], 0, 0, 600, 600);
    botonesDeDecisiones();
    textSize(18);
    text(texto[5], 15, 370);
  } else if (Escena == 7) {
    image(pantalla[7], 0, 0, 600, 600);
    botonContinuar();
    textSize(18);
    text(texto[6], 15, 400);
  } else if (Escena == 8) {
    image(pantalla[8], 0, 0, 600, 600);
    botonReiniciar();
    textSize(22);
    text(texto[7], 15, 400);
  } else if (Escena == 9) {
    image(pantalla[9], 0, 0, 600, 600);
    botonReiniciar();
    textSize(18);
    text(texto[8], 14, 400);
  } else if (Escena == 10) {
    image(pantalla[10], 0, 0, 600, 600);
    botonContinuar();
    textSize(18);
    text(texto[9], 15, 395);
  } else if (Escena == 11) {
    image(pantalla[11], 0, 0, 600, 600);
    botonReiniciar();
    textSize(18);
    text(texto[10], 15, 370);
  } else if (Escena == 12) {
    image(pantalla[12], 0, 0, 600, 600);
    fill(255);
    textSize(40);
    text("CRÉDITOS", 220, 90);
    textSize(22);
    text("Portada: \nEncinas Noelia Patricia, SuperColoring.com", 40, 175);
    text("Fondos: \nDRAW MY LIFE en Español, Encinas Noelia Patrcia", 40, 250);
    text("Obra: \nLa Metamorfosis de Franz Kafka", 40, 325);
    text("Alumno: \nEncinas Noelia Patricia (94726/8)", 40, 400);
    botonesDeCreditos();
  } else if (Escena == 13) {
    image(pantalla[13], 0, 0, 600, 600);
  }
}
int ImagenDeFondo(){
return 0;
}

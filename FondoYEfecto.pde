void fondoPantalla() {
  fill(0);
  noStroke();
  for (int equis=0; equis<cant; equis++) {
    for (int i=0; i<cant; i++) {
      float pintar = distancia(mouseX, mouseY, equis*tam, i*tam);
      float tono = pintar*400/distancia(width/4, height/4, 0, 0);
      if ((mouseX - 50) > 550) {
        fill(255, tono);
        rect(equis*tam, i*tam, tam, tam);
      } else {
        fill(0, tono);
        rect(equis*tam, i*tam, tam, tam);
      }
    }
  }
}

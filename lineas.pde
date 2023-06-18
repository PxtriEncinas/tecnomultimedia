void lineas() {

  strokeWeight(15);
  for (int h = 0; h < 500; h += lineaH) {
    if ((mouseX - 50) > 550) {
      stroke(0, 100);
      line(400, h, 800, h);
    } else {
      stroke(255, 100);
      line(400, h, 800, h);
    }
  }

  for (int v = 460; v < 900; v += lineaV) {
    line(v, 0, v, 800);
  }

  noStroke();

  for ( int x =460; x < 850; x += lineaV) {
    for ( int y =0; y < 495; y += lineaH) {
      if ((mouseX - 50) > 550) {
        fill(0);
        ellipse(x, y, 20, 20);
      } else {
        fill(255);
        ellipse(x, y, 20, 20);
      }
    }
  }
}

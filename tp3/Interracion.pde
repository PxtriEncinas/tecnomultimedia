void Aventura() {
  if (Escena  == 0 && mouseX > 100 && mouseX < 300 && mouseY > 400 && mouseY < 470) {
    Escena = 1;
  } else  if (Escena  == 1 && mouseX > 450 && mouseX < 545 && mouseY > 550 && mouseY < 590) {
    Escena = 2;
  } else if (Escena  == 2 && mouseX > 450 && mouseX < 545 && mouseY > 550 && mouseY < 590) {
    Escena = 3;
    //B
  } else if (Escena  == 3 && mouseX > 410 && mouseX < 465 && mouseY > 550 && mouseY < 590) {
    Escena = 9;
  } else if (Escena  == 9 && mouseX > 240 && mouseX < 335 && mouseY > 550 && mouseY < 590) {
    Escena = 0;
    //A
  } else if (Escena  == 3 && mouseX > 110 && mouseX < 165 && mouseY > 550 && mouseY < 590) {
    Escena = 4;
  } else if (Escena  == 4 && mouseX > 450 && mouseX < 545 && mouseY > 550 && mouseY < 590) {
    Escena = 5;
  } else if (Escena  == 5 && mouseX > 450 && mouseX < 545 && mouseY > 550 && mouseY < 590) {
    Escena = 6;
    //B
  } else if (Escena  == 6 && mouseX > 410 && mouseX < 465 && mouseY > 550 && mouseY < 590) {
    Escena = 10;
  } else if (Escena  == 10 && mouseX > 450 && mouseX < 545 && mouseY > 550 && mouseY < 590) {
    Escena = 11;
  } else if (Escena  == 11 && mouseX > 240 && mouseX < 335 && mouseY > 550 && mouseY < 590) {
    Escena = 0;
  }
  //A
  else if (Escena  == 6 && mouseX > 110 && mouseX < 165 && mouseY > 550 && mouseY < 590) {
    Escena = 7;
  } else if (Escena  == 7 && mouseX > 450 && mouseX < 545 && mouseY > 550 && mouseY < 590) {
    Escena = 8;
  }  else if (Escena  == 8 && mouseX > 240 && mouseX < 335 && mouseY > 550 && mouseY < 590) {
    Escena = 0;
  } 
  //creditos
  else if (Escena  == 0 && mouseX > 100 && mouseX < 300 && mouseY > 470 && mouseY < 540) {
    Escena = 12;
  }  else if (Escena  == 12 && mouseX > 60 && mouseX < 160 && mouseY > 470 && mouseY < 520) {
    Escena = 0;
  }  else if (Escena  == 12 && mouseX > 60 && mouseX < 230 && mouseY > 530 && mouseY < 580) {
    Escena = 13; 
  } else if (Escena == 13 && mouseX > 30 && mouseX < 105 && mouseY > 536 && mouseY < 568) {
  Escena = 12;
  }
}

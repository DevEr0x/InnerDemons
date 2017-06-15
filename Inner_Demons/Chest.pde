class Chest {
  PVector chest = new PVector(700, 644);
  PImage chestIMG;
  boolean open = false;

  Chest() {
  }

  void chestDisplay() {
    chestIMG = loadImage("Chest Closed.png");
    if (chest.x-10 <= Bob.x && chest.x+40 >= Bob.x +10) {
      fill(255);
      text("Press 'e' to open!", 10, 130);
      if (keys['e']) {
        if (chestOpen == false) {
          chestOpen();
        }
        chestOpen = true;
      }
    }
    chestIMG.resize(40, 40);
    if (chestOpen == true) {
      chestIMG = loadImage("Chest Open.png");
      chestIMG.resize(70, 70);
      image(chestIMG, chest.x-18, chest.y-10);
    } else {
      image(chestIMG, chest.x, chest.y);
    }
  }
}
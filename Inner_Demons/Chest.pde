class Chest {
  PVector chest = new PVector(700, 644);
  PImage chestIMG;
  boolean open = false;

  Chest() {
  }

  void chestDisplay() {
    chestIMG = loadImage("Chest Closed.png");
    if (chest.x <= Bob.x && chest.x+40 >= Bob.x +10) {
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
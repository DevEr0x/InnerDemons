class Chest {
  PVector chest = new PVector(700, 644);
  PImage chestIMG;
  boolean open = false;

  Chest() {
  }

  void chestDisplay() {
    if (chest.x <= Bob.x && chest.x+30 >= Bob.x +10) {
      chestIMG = loadImage("Chest Open.png");
    }
    chestIMG = loadImage("Chest Closed.png");
    chestIMG.resize(40, 40);
    image(chestIMG, chest.x, chest.y);
  }
}
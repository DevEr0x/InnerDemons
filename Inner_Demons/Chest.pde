class Chest {
  PVector chest = new PVector(700,644);
  PVector playerPosition = new PVector(0, 0);
  PImage chestIMG;
  boolean open = false;

  Chest() {
  }

  void chestDisplay() {
    chestIMG = loadImage("Chest Closed.png");
    chestIMG.resize(40,40);
    image(chestIMG, chest.x, chest.y);
  }


  void chestProbability() {
  }

  void chestUpdate(float tempPlayerX, float tempPlayerY) {
    playerPosition.x = tempPlayerX;
    playerPosition.y = tempPlayerY;

    if (chest.x<playerPosition.x && chest.x >playerPosition.x +20) {
      chestIMG = loadImage("Chest Open.png");
    }
  }
}
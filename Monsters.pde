class Monsters {
  float orcX, skeletonX, demonX;
  float monsterY;
  PImage [][] orc;
  PImage [][] skeleton;
  PImage demon;
  int orcDirection;
  int skeletonDirection;
  boolean orcMotion, skeletonMotion;
  float orcFrame, skeletonFrame;
  float counter, counter2, counter3, counter4, counter5, counter6;
  int xDeltaOrc=0;
  int yDeltaOrc=0;
  int xDeltaSkeleton = 0;
  int yDeltaSkeleton =0;

  final int UP = 0, LEFT = 1, DOWN = 2, RIGHT =3;
  Monsters(float tempX)
  {
    orcX = tempX;
    monsterY = 625;
    setupMonsters();
    orcMotion = false;
    orcFrame = 3;
    orcDirection = 3;
    skeletonMotion = false;
    skeletonDirection = 3;
    skeletonFrame = 3;
  }

  void setupMonsters()
  {
    orc = new PImage[12][9];
    spriteSheet = loadImage("Orc.png");
    skeleton = new PImage[12][9];
    //spriteSheet = loadImage("Skeleton.png");
    demon = loadImage("demon.gif");
    for (int i = 0; i < 9; i++)
    {
      orc[0][i] = spriteSheet.get(21 + 64 * i, 514, 32, 65); //Upward moving sprite
      orc[1][i] = spriteSheet.get(16 + 64 * i, 578, 40, 65); //Left moving sprite
      orc[2][i] = spriteSheet.get(16 + 64 * i, 642, 32, 65); //Downward moving sprite
      orc[3][i] = spriteSheet.get(10 + 64 * i, 706, 40, 65); //Right moving sprite
    }
  }


  void monsterOrcMove()
  {
    counter++;
    //println(counter);
    if (counter >= 100 && counter<=200)
    {
      counter2++;
      if (counter2 <=50) {
        xDeltaOrc = 0;
        xDeltaOrc--;//left
        // println(xDeltaOrc);
      }
    }
    if (counter >=200 && counter<=300)
    {
      counter3++;
      if (counter3<=50) {
        xDeltaOrc =0;
        xDeltaOrc++;//right
        counter2 =0;
        // println(xDeltaOrc);
      }
    }
    if (counter >=300) {
      counter3 =0;
      xDeltaOrc = 0;
      counter = 0;
    }
  }

  void drawMonsterOrc() {
    if (orcMotion)
      image(orc[orcDirection][1 + int(orcFrame)], orcX, monsterY); //Cycles through the frames with the help of line 46
    else 
    image(orc[orcDirection][0], orcX, monsterY);
  }

  void updateMonsterOrc()
  {

    monsterOrcMove();
    orcFrame = (orcFrame + 0.4 /*Changing the 0.2 changes animation speed*/) % 8; //helps change through the frames
    orcMotion = true;
    if (xDeltaOrc ==0 && yDeltaOrc ==0)
      orcMotion =false;
    else if (xDeltaOrc == -1)
      orcDirection = LEFT;
    else if (xDeltaOrc == 1)
      orcDirection = RIGHT;
    else if (yDeltaOrc == -1)
      orcDirection = UP;
    else if (yDeltaOrc == 1)
      orcDirection = DOWN;

    orcX = orcX + xDeltaOrc;
    monsterY = monsterY + yDeltaOrc;
    if (isOrcOffScreen(orcX, monsterY)) {
      orcX = orcX - xDeltaOrc;
      monsterY = monsterY - yDeltaOrc;
    }
  }

  boolean isOrcOffScreen(float x, float y) {
    if (x < 0 || x > width-30 || y<0 || y > height - 56)
      return true;
    return false;
  }

  //skeleton stuff
  void monsterSkeletonMove()
  {
    counter4++;
    println(counter4);
    if (counter4 >= 100 && counter4<=200)
    {
      counter5++;
      if (counter5 <=50) {
        xDeltaSkeleton = 0;
        xDeltaSkeleton--;//left
        println(xDeltaSkeleton);
      }
    }
    if (counter4 >=200 && counter4<=300)
    {
      counter6++;
      if (counter6<=50) {
        xDeltaSkeleton =0;
        xDeltaSkeleton++;//right
        counter5 =0;
        println(xDeltaSkeleton);
      }
    }
    if (counter4 >=300) {
      counter6 =0;
      xDeltaSkeleton = 0;
      counter4 = 0;
    }
  }

  void drawMonsterSkeleton() {
    if (skeletonMotion)
      image(skeleton[skeletonDirection][1 + int(skeletonFrame)], skeletonX, monsterY); //Cycles through the frames with the help of line 46
    else 
    image(skeleton[skeletonDirection][0], skeletonX, monsterY);
  }

  void updateMonsterskeleton()
  {
    monsterSkeletonMove();
    skeletonFrame = (skeletonFrame + 0.4 /*Changing the 0.2 changes animation speed*/) % 8; //helps change through the frames
    skeletonMotion = true;
    if (xDeltaSkeleton ==0 && yDeltaSkeleton ==0)
      skeletonMotion =false;
    else if (xDeltaSkeleton == -1)
      skeletonDirection = LEFT;
    else if (xDeltaSkeleton == 1)
      skeletonDirection = RIGHT;
    else if (yDeltaSkeleton == -1)
      skeletonDirection = UP;
    else if (yDeltaOrc == 1)
      orcDirection = DOWN;

    skeletonX = skeletonX + xDeltaOrc;
    monsterY = monsterY + yDeltaSkeleton;
    if (isSkeletonOffScreen(skeletonX, monsterY)) {
      skeletonX = skeletonX - xDeltaSkeleton;
      monsterY = monsterY - yDeltaSkeleton;
    }
  }

  boolean isSkeletonOffScreen(float x, float y) {
    if (x < 0 || x > width-30 || y<0 || y > height - 56)
      return true;
    return false;
  }
}
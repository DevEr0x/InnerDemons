class Skeleton
{
  float x, y;
  PImage spriteSheet;
  PImage [][] movement;
  boolean inMotion; //Lets you know if character is moving or not
  int currentDirection;
  float currentFrame;
  
  final int UP = 0, LEFT = 1, DOWN = 2, RIGHT =3;

  Skeleton()
  {
    inMotion = false;
    currentDirection=1;
    currentFrame=0;
    x = 300;
    y = 300;

    setupSprites();
  }

  void setupSprites()
  {
    movement= new PImage[12][9]; //Create 2D array for Images
    spriteSheet = loadImage("skeleton.png"); //Load entire spritesheet
    for (int i = 0; i < 9; i++)
    {
      movement[0][i] = spriteSheet.get(16 + 64 * i, 512, 32, 56); //Upward moving sprite
      movement[1][i] = spriteSheet.get(16 + 64 * i, 576, 32, 56); //Left moving sprite
      movement[2][i] = spriteSheet.get(16 + 64 * i, 640, 32, 56); //Downward moving sprite
      movement[3][i] = spriteSheet.get(16 + 64 * i, 704, 32, 56); //Right moving sprite
    }
  }


  void drawSkeleton()
  {
    image(movement[currentDirection][0], x, y);
  }
  void updateSkeleton(int xDelta, int yDelta)
  {
    inMotion = true;
    
    if(xDelta ==0 && yDelta ==0)
      inMotion =false;
    else if(xDelta == -1)
      currentDirection = LEFT;
    else if (xDelta == 1)
      currentDirection = RIGHT;
    else if (yDelta == -1)
      currentDirection = UP;
    else if (yDelta == 1)
      currentDirection = DOWN;
    
    
    x = x + xDelta;
    y = y + yDelta;
  }
}

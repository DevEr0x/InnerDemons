class Monsters
{
  float monsterX;
  float monsterY;
  PImage [][] Orc;

  Monsters(/*float tempX, float tempY*/)
  {
  }

  void setupMonsters()
  {
       Orc = new PImage[12][9];
       spriteSheet = loadImage("Orc.png");
    
  }
  
  
  void monsterUpdate()
  {
    float r=random(1);
    if(r <=.1)
    {
      monsterX = monsterX + 5;
    }
    if(r >.1 && r <=.2)
    {
      monsterX = monsterX -5;
    }
    
    
    
  }





}
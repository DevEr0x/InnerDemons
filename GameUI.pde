void screenDisplay() 
{
  rectMode(0);
  //Health Display
  fill(0, 0);
  stroke(0);
  rect(10, 10, 200, 30);
  fill(255, 0, 0);
  rect(10, 10, health*2, 30);
  fill(255);
  if (health>80) 
  {
    textSize(health/3);
    text("Health:" + health+"%", 10, 40);
  } 
  else 
  {
    textSize(30);
    text(health+"%", 10, 40);
  }
  if (health <= 0) 
  {
    gameScreen = false;
    deathScreen = true;
  }

  //Level Display
  textSize(30);
  fill(0);
  text("Level: "+level + "/20", 250, 40);

  //Pause Button
  fill(0);
  stroke(255);
  rect(890, 10, 100, 50);
  fill(255);
  textSize(30);
  text("Pause", 895, 45);
  timer += counter;
  if (timer >= 10) 
  {
    timer = 0;
    counter = 0;
  }
  if (mousePressed) 
  {
    if (mouseX>=890 && mouseY<=990) 
    {
      if (mouseY>=10 && mouseY<=60) 
      {
        if (pauseScreen && timer == 0) 
        {
          pauseScreen=false;
          counter = 1;
        } 
        else if (timer == 0) 
        {
          pauseScreen = true;
          counter = 1;
        }
      }
    }
  }
  println(counter+ "timer:"+ timer);
}
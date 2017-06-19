void screenDisplay() {
  rectMode(0);
  //Health Display
  fill(0, 0);
  stroke(0);
  rect(10, 10, 200, 30);
  fill(255, 0, 0);
  rect(10, 10, health*2, 30);
  fill(255);
  if (health>80) {
    textSize(health/3);
    text("Health:" + health+"%", 10, 40);
  } else {
    textSize(30);
    text(health+"%", 10, 40);
  }
  if (health <= 0) {
    gameScreen = false;
    deathScreen = true;
  }

  //Talk
  if (level == 0) {
    fill(0);
    stroke(255);
    rect(780, 100, 200, 300);

    fill(255);
    textSize(15);
    text("Hello, young hero!", 790, 130);
    text("I'm sure you're wondering", 790, 150);
    text("why you're here.", 790, 170);
    text("Deep in this cave, there is", 790, 190);
    text("a monster. You are the", 790, 210);
    text("only one who has the", 790, 230);
    text("power to defeat it!", 790, 250);
    text("Go now, find the beast", 790, 270);
    text("and slay it!", 790, 290);
    text("Oh, and by the way...", 790, 310);
    text("You have the ability to", 790, 330);
    text("hold your weapon with", 790, 350);
    text("your mind... so it'll just", 790, 370);
    text("kinda... float there.", 790, 390);
  }
  if (level == 5) {
    fill(0);
    stroke(255);
    rect(780, 100, 200, 200);

    fill(255);
    textSize(15);
    text("Oh yeah, the cave is", 790, 130);
    text("gonna keep getting darker", 790, 150);
    text("and creepier. Beware of", 790, 170);
    text("monsters too.", 790, 190);
  }
  if (level == 10) {
    fill(0);
    stroke(255);
    rect(780, 100, 200, 200);

    fill(255);
    textSize(15);
    text("By the way, the monsters", 790, 130);
    text("are going to keep getting", 790, 150);
    text("harder.", 790, 170);
    text("........", 790, 190);
    text("Just a heads up.", 790, 210);
  }
  if (level==15) {
    fill(0);
    stroke(255);
    rect(780, 100, 200, 200);

    fill(255);
    textSize(15);
    text("Did I ever mention what", 790, 130);
    text("the boss is? Eh.... -you'll", 790, 150);
    text("see soon enough.", 790, 170);
  }

  //Level Display
  textSize(30);
  if (level < 5) {
    fill(0);
  } else {
    fill(255);
  }
  text("Level: "+level + "/20", 250, 40);

  //Pause Button
  fill(0);
  stroke(255);
  rect(890, 10, 100, 50);
  fill(255);
  textSize(30);
  text("Pause", 895, 45);
  timer += counter;
  if (timer >= 10) {
    timer = 0;
    counter = 0;
  }
  if (mousePressed) {
    if (mouseX>=890 && mouseY<=990) {
      if (mouseY>=10 && mouseY<=60) {
        if (pauseScreen && timer == 0) {
          pauseScreen=false;
          counter = 1;
        } else if (timer == 0) {
          pauseScreen = true;
          counter = 1;
        }
      }
    }
  }
}
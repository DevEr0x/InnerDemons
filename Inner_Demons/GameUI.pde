void screenDisplay() {

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
  if (health < 0) {
    gameScreen = false;
    background(0);
  }

  //Pause Button
  fill(0);
  stroke(255);
  rect(890, 10, 100, 50);
  fill(255);
  textSize(30);
  text("Pause", 895, 45);
  if (mousePressed) {
    if (mouseX>=890 && mouseY<=990) {
      if (mouseY>=10 && mouseY<=60) {
        pauseScreen = true;
      }
    }
  }
}
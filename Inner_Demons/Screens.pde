void menuScreen() {                    //The screen for the main menu
  background(255); 

  //Setting Up the Title
  fill(255, 0, 0); //Makes the title box red
  rect(width/2, 65, width, 100); //Makes the title box 
  textSize(100); //Making the title big
  fill(0); //Making the text black
  text("Inner Demons", 150, 100); //Making the text appear


  //Making Buttons
  rectMode(CENTER);
  stroke(0); //Setting the border of the button
  fill(255); //Making the button look white
  rect(width/2, 200, 300, 100); //Top Button - Play
  rect(width/2, 400, 300, 100); //Mid Button - Options
  rect(width/2, 600, 300, 100); //Low Button - Quit

  //Adding Text to buttons
  textSize(75);
  fill(0); //Making the text black
  text("Play", (width/2)-70, 200+25); //Top Button - Text(Play)
  text("Options", (width/2)-140, 400+25); //Mid Button - Text(Options)
  text("Quit", (width/2)-85, 600+25); //Low Button - Text(Quit)

  if (mousePressed) {
    if (mouseX >= (width/2)-150 && mouseX<=(width/2)+150) {  //Checks for mouse location to see if button was clicked.
      if (mouseY>= 200-50 && mouseY<= 200+50) {
        characterScreen = true;
        menuScreen = false;
      }
    }
  }
}

void characterScreen() {
  background(0);

  //Title
  fill(255); //Makes the text white
  textSize(80); //Makes the text size 80
  text("Character Selection", 100, 80); //Makes the text

  //Character Settings
  fill(255);
  textSize(50);
  text("Gender", 690, 160);
  text("Preset", 700, 340);
  //Setting Buttons
  rectMode(LEFT); //Changes how the rect is displayed
  rectMode(0);
  fill(0);
  stroke(255);
  rect(640, 180, 270, 100); //Gender Box
  rect(640, 360, 270, 240); //Preset Box

  //Inner Gender Buttons
  rect(660, 200, 100, 60); //Male Button
  rect(790, 200, 100, 60); //Female Button

  //Inner Preset Buttons
  rect(680, 375, 75, 50); //Preset 1
  rect(800, 375, 75, 50); //Preset 2
  rect(680, 455, 75, 50); //Preset 3
  rect(800, 455, 75, 50); //Preset 4
  rect(680, 535, 75, 50); //Preset 5
  rect(800, 535, 75, 50); //Preset 6

  //Continue Button
  rect(690, 615, 270, 75);

  //Gender Button Text
  fill(255);
  textSize(30);
  text("BOY", 680, 240);
  text("GIRL", 805, 240);

  //Preset Button Text
  text("1", 710, 410); //Preset 1
  text("2", 830, 410); //Preset 2
  text("3", 710, 490); //Preset 3
  text("4", 830, 490); //Preset 4
  text("5", 710, 570); //Preset 5
  text("6", 830, 570); //Preset 6

  //Continue Button Text
  textSize(50);
  text("Continue", 710, 670);

  if (mousePressed) {
    if (mouseX >=660 && mouseX<= 760) { //Selecting BOY
      if (mouseY >= 200 && mouseY<= 260) {
        gender = "Male";
      }
    }
    if (mouseX>=790 && mouseX<=890) { //Selecting GIRL
      if (mouseY >= 200 && mouseY<= 260) {
        gender = "Female";
      }
    }
    if (mouseX>=680 && mouseX<=755) { //Selecting Preset 1
      if (mouseY>=375 && mouseY<=425) {
        preset = 1;
      }
    }
    if (mouseX>=800 && mouseX<=875) { //Selecting Preset 2
      if (mouseY>=375 && mouseY<=425) {
        preset = 2;
      }
    }
    if (mouseX>=680 && mouseX<=755) { //Selecting Preset 3
      if (mouseY>=455 && mouseY<=505) {
        preset = 3;
      }
    }
    if (mouseX>=800 && mouseX<=875) { //Selecting Preset 4
      if (mouseY>=455 && mouseY<=505) {
        preset = 4;
      }
    }
    if (mouseX>=680 && mouseX<=755) { //Selecting Preset 5
      if (mouseY>=535 && mouseY<=585) {
        preset = 5;
      }
    }
    if (mouseX>=800 && mouseX<=875) { //Selecting Preset 6
      if (mouseY>=535 && mouseY<=585) {
        preset = 6;
      }
    }
  }

  //Preview Screen
  rectMode(LEFT); //Changes how the rect is displayed
  fill(0); //Makes the box look transparent
  stroke(255); //Makes the border look white
  rect(20, 100, 600, 600);
  fill(255);
  textSize(30);
  text("Preview", 270, 130);
  text("Gender: " +gender, 25, 550);
  text("Preset: " +preset, 25, 590);
}
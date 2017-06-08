void menuScreen() { //The screen for the main menu, this is where the game starts up, and the player chooses where to go from here.
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
    if (mouseX >= (width/2)-150 && mouseX<=(width/2)+150) {  //Goes to character selection screen
      if (mouseY>= 200-50 && mouseY<= 200+50) {
        characterScreen = true;
        menuScreen = false;
      }
    }
    if (mouseX >= (width/2)-150 && mouseX<=(width/2)+150) { //Goes to settings screen
      if (mouseY>=400-50 && mouseY<=400+50) {
        optionsScreen = true;
        menuScreen = false;
      }
    }
    if (mouseX >= (width/2)-150 && mouseX<=(width/2)+150) {  //Goes to quit confirmation screen
      if (mouseY >= 600-50 && mouseY<=600+50) {
        quitScreen = true;
        menuScreen = false;
      }
    }
  }
}

void characterScreen() {  //The character selection screen, this is where the player will choose what their character looks like.
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

  //Back Button
  rect(40, 615, 200, 75);

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

  //Back Button Text
  textSize(50);
  text("Back", 80, 670);

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
    if (mouseX>=40 && mouseX<=240) { //Back Button
      if (mouseY>=615 && mouseY<=690) {
        menuScreen = true;
        characterScreen = false;
      }
    }
    if (mouseX>=690 && mouseX<=690+270) { //Continue Button
      if (mouseY>=615 && mouseY<=690) {
        difficultyScreen = true;
        characterScreen = false;
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
  spriteSheet = loadImage(presetVar);
  PImage display =spriteSheet.get(10 + 0, 706, 40, 65);
  display.resize(200, 400);
  text("Preview", 270, 130);
  text("Gender: " +gender, 25, 550);
  text("Preset: " +preset, 25, 590);
  image(display, 230, 100);
  PImage displayWeapon = weaponImage[3];
  displayWeapon.resize(200, 50);
  image(displayWeapon, 315, 360);
}

void quitScreen() {     //This is the quit confirmation screen, it basically just asks if the player really wants to switch screens.
  background(0);

  //Setting the title
  textSize(100);
  fill(255);
  text("Are you sure?", 150, 100);

  //Setting the buttons
  rectMode(0);
  fill(0);
  stroke(255);
  rect(100, 550, 200, 100); //Setting YES button
  rect(700, 550, 200, 100); //Setting NO button

  //Button Text
  fill(255);
  textSize(50);
  text("Yes", 150, 620); //Setting YES button text
  text("No", 760, 620); //Setting NO button text

  if (mousePressed) {
    if (mouseX>=100 && mouseX<=300) {
      if (mouseY>=550 && mouseY<=650) { //Selects YES
        exit();
      }
    }
    if (mouseX>=700 && mouseX<=900) {
      if (mouseY>= 550 && mouseY<=650) { //Selects NO
        menuScreen = true;
        quitScreen = false;
      }
    }
  }
}

void difficultyScreen() {  //Difficulty selection screen, player chooses how hard they want the game to be.
  background(0);

  //Setting up title
  fill(255);
  textSize(100);
  text("Select Difficulty", 100, 100);

  //Creating buttons
  fill(0);
  stroke(255);
  rectMode(0); 
  rect(50, 350, 200, 100); //Setting EASY button
  rect(400, 350, 200, 100); //Setting NORMAL button
  rect(750, 350, 200, 100); //Setting HARD button
  rect(width/2+10, 500, 200, 100); //Setting START button
  rect((width/2)-210, 500, 200, 100); //Setting BACK button

  //Setting button text
  fill(255);
  textSize(50);
  text("Easy", 95, 420); //Setting EASY button text
  text("Normal", 410, 420); //Setting NORMAL button text
  text("Hard", 795, 420); //Setting HARD button text
  text("Back", 340, 570); //Setting BACK button text
  text("Start", 550, 570); //Setting START button text

  //Setting Button Display Circle
  fill(0);
  stroke(255);
  ellipse(250, 350, 25, 25); //Display Circle for EASY
  ellipse(600, 350, 25, 25); //Display Circle for NORMAL
  ellipse(950, 350, 25, 25); //Display Circle for HARD

  if (difficulty == 1) { //Visual Display for EASY mode
    fill(0, 255, 0);
    stroke(255);
    ellipse(250, 350, 25, 25);
  }
  if (difficulty == 2) { //Visual Display for NORMAL mode
    fill(0, 255, 0);
    stroke(255);
    ellipse(600, 350, 25, 25);
  }
  if (difficulty == 3) { //Visual Display for HARD mode
    fill(0, 255, 0);
    stroke(255);
    ellipse(950, 350, 25, 25);
  }

  if (mousePressed) {
    if (mouseX>=50 && mouseX<=250) {
      if (mouseY>=350 && mouseY<=450) { //Sets the difficulty to 1 (EASY)
        difficulty = 1;
      }
    }
    if (mouseX>=400 && mouseX<=600) {
      if (mouseY>=350 && mouseY<=450) { //Sets the difficulty to 2 (NORMAL)
        difficulty = 2;
      }
    }
    if (mouseX>=750 && mouseX<=950) {
      if (mouseY>=350 && mouseY<= 450) { //Sets the difficulty to 3 (HARD)
        difficulty = 3;
      }
    }
    if (mouseX>=width/2-210 && mouseX<=width/2-10) {
      if (mouseY>=500 && mouseY<= 600) { //Goes back to character selection screen
        characterScreen = true;
        difficultyScreen = false;
      }
    }
    if (mouseX>=width/2+10 && mouseX<=width/2+210) {
      if (mouseY>=500 && mouseY<= 600) { //Goes to the game screen
        gameScreen = true;
        difficultyScreen = false;
      }
    }
  }
}

void gameScreen() { //The start of the game screen - This is where all the action will take place.
  if (level >= 0 && level < 5) {
    background(startBackground); //This will be replaced with dialouge, but for now it's just this
    monsterCall();
  }
  if (level >= 5 && level<10) {
    background(background2);
  }
  if (level >=10 && level < 15) {
    background(background3);
  }
  if (level >=15 && level < 20) {
    background(background4);
  }
  if (level==20) {
    background(bossBackground);
  }
  if (level >= 21) {
    winScreen = true;
    gameScreen = false;
  }
  randomChest.chestDisplay();
  Bob.setupSprites();
  Bob.drawPlayer();
  screenDisplay();
  for (int i = 1; i <= weaponCount; i++) {
    image(inventory[i], i*50, 100);
  }
}

void optionsScreen() { //This is where the player can choose between: Settings - Help - Credits
  background(255);

  //Setting up title
  fill(0);
  textSize(100);
  text("Options", 300, 100);

  //Setting up buttons
  fill(255);
  strokeWeight(1);
  rectMode(0);
  stroke(0);
  rect(750, 200, 200, 100); //Creating HELP button
  rect(750, 350, 200, 100); //Creating SETTINGS Button
  rect(750, 500, 200, 100); //Creating CREDITS Button
  rect(20, 550, 200, 100); //Creating BACK Button

  //Setting up button text
  fill(0);
  textSize(50);
  text("Help", 790, 265); //Creating HELP button text
  text("Settings", 755, 415); //Creating SETTINGS button text
  text("Credits", 770, 565); //Creating CREDITS button text
  text("Back", 60, 615); //Creating BACK button text

  if (mousePressed) {
    if (mouseX>=750 && mouseX<=950) { //Selects HELP button
      if (mouseY>=200 && mouseY<=300) {
      }
    }
    if (mouseX>=750 && mouseX<=950) { //Selects SETTINGS button
      if (mouseY>=350 && mouseY<=450) {
      }
    }
    if (mouseX>=750 && mouseX<=950) { //Selects CREDITS button
      if (mouseY>=500 && mouseY<=700) {
        creditsScreen = true;
        y = 700;
        optionsScreen = false;
      }
    }
    if (mouseX>=20 && mouseX<=220) { //Selects BACK button
      if (mouseY>=550 && mouseY<=650) {
        menuScreen = true;
        optionsScreen = false;
      }
    }
  }
}

void creditsScreen() {  //Credits screen
  /*
The best way to describe this screen:
   This text is all attatched to the y variable, which is constantly moving upwards. 
   This makes all the text scroll upwards like normal credits you'd see in a movie.
   */
  int x = width/2-200;
  y--;
  if (y<= -1000) {
    optionsScreen = true;
    creditsScreen = false;
  }
  background(0);

  //Setting Title
  textSize(100);
  fill(255);
  text("Credits", x, y);
  text("Developers", x-100, y+100);
  textSize(50);
  text("Ben Kennard", x, y+200);
  text("Eric Mazza", x, y+300);
  text("Shayne Lisk", x, y+400);
  textSize(100);
  text("Special Thanks", x-200, y+500);
  textSize(50);
  text("PiskelApp - Used for weapons", x-200, y+600); //Where we made the weapons and chest and background animations
  text("Github - Collaboration", x-200, y+700); //Where we share all our code
  text("Gaurav Munjal - SpriteSheets", x-200, y+800); //Universal Sprite Sheet Maker (This is the creator of the site we used for character sprites)
  text("Project Crystal - Site Hosting", x-200, y+900); //Website hosting
  textSize(75);
  text("Thanks for playing!", x-200, y+1000);
}
void pauseScreen() {  //Pause screen- this is where the player will be able to adjust the items in their inventory
  fill(255, 80);
  stroke(0);
  rectMode(CENTER);
  rect(width/2, height/2, 500, 500);

  fill(0);
  textSize(40);
  text("Inventory", 400, 150);
}

void deathScreen() {
  background(0);
  fill(255);
  textSize(200);
  text("YOU DIED", 30, 300);
}

void winScreen() {
  background(0);
  fill(255);
  textSize(200);
  text("YOU WIN", 60, 300);
}
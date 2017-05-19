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
  text("Play", (width/2)-70, 200+25);
  text("Options", (width/2)-140, 400+25);
  text("Quit", (width/2)-85, 600+25);
}
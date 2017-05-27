/********************\
 
 Authors:
 Eric Mazza, Shayne Lisk, Ben Kenard
 
 Start Date:
 May 19th, 2017
 
 Project Name:
 Inner Demons
 
 Description:
 This is a dungeon crawler game where the player gets multiple cusomization choices.
 They are able to choose their gender, and one of the preset character looks, based on their gender.
 
 They are able to collect cool items, and they can fight monsters down in the deepest depths of a dungeon.
 They can fight a giant boss monster, and truely face their Inner Demons.
 
 \********************/

//Images - Backgrounds
PImage startBackground; 

//Character Global Variables
int preset = 1;
String gender = "Male";

//Scene Checking Variables
boolean menuScreen = true; //Starts off true (Because it's the starting screen)
//The rest of the screens will be false, because they are only active when the player gets to them, menuScreen will be deactivated when switching from one screen to the next.
boolean characterScreen = false;
boolean quitScreen = false;
boolean difficultyScreen = false;
boolean gameScreen = false;

//Difficulty Variables
int difficulty = 2;

//Game Progression Variables
int level = 0;

void setup() {
  size(1000, 700); //Sets the size of the screen
  smooth();

  //Image Defining
  startBackground = loadImage("Starting Background.png");
  startBackground.resize(1000, 700);
}

void draw() {
  checks(); //Runs all the screen checks constantly
}

//The checks in the checks function just run through, to see what screen the user is supposed to be on.
void checks() {
  if (menuScreen) {
    menuScreen();
  }
  if (characterScreen) {
    characterScreen();
  }
  if (quitScreen) {
    quitScreen();
  }
  if (difficultyScreen) {
    difficultyScreen();
  }
  if (gameScreen) {
    gameScreen();
  }
}

/*
Work in progress...
 Short description of the code below:
 This is supposed to make the button creation process go by a lot quicker and use less code... 
 currently, it doesn't work, but I have hopes for it to become very usefull. 
 Any suggestions for it would be very helpful.
 */
void buttonClick(int x1, int x2, int y1, int y2, boolean activate, boolean disable) {
  if (mousePressed) {
    if (mouseX>=x1 && mouseX<=x2) {
      if (mouseY>=y1 && mouseY<=y2) { //Selects YES
        activate = true;
        disable = false;
      }
    }
  }
}
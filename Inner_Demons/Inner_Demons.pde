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
PImage background2;
PImage background3;

//Images - Characters
PImage spriteSheet;
//Images - Enemies

//Character Global Variables
int preset = 1;
String gender = "Male";
String presetVar = "Male_preset1.png";

//Scene Checking Variables
boolean menuScreen = true; //Starts off true (Because it's the starting screen)
//The rest of the screens will be false, because they are only active when the player gets to them, menuScreen will be deactivated when switching from one screen to the next.
boolean characterScreen = false;
boolean quitScreen = false;
boolean difficultyScreen = false;
boolean gameScreen = false;
boolean optionsScreen = false;
boolean creditsScreen = false;
boolean pauseScreen = false;
boolean deathScreen = false;
boolean winScreen = false;

//Difficulty Variables
int difficulty = 2;

//Game Progression Variables
int level = 0;

//Credits
int y = 700;

//PauseMenu
int timer = 0;
int counter = 0;

//Player Declaration
boolean keys[];
Player Bob;
boolean arrowCheck = false;
boolean up = false;
boolean down = false;

int health = 100;

//Weapons
float damageMod = 0;
float damage = 5;
float finalDamage;
int currentWeapon = 1;
PImage[] weaponImage = new PImage[10];

void setup() {
  size(1000, 700); //Sets the size of the screen
  smooth();

  //Image Defining
  startBackground = loadImage("Starting Background.png");
  startBackground.resize(1000, 700);
  background2 = loadImage("background2.png");
  background2.resize(1000, 700);
  background3 = loadImage("background3.png");
  background3.resize(1000, 700);

  //Player Defining
  Bob = new Player();
  keys = new boolean[128];
}

void draw() {
  checks(); //Runs all the screen checks constantly
  characterChecks(); //Constantly checks what character should be displayed.
  weaponChecks(); //Constantly checks what weapon should be displayed
  move();
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
  if (optionsScreen) {
    optionsScreen();
  }
  if (creditsScreen) {
    creditsScreen();
  }
  if (pauseScreen) {
    pauseScreen();
  }
  if (deathScreen) {
    deathScreen();
  }
  if (winScreen) {
    winScreen();
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

/*
This area is used to control User movement
 */
void move() {
  int xDelta=0;
  int yDelta=0;
  if (keys['w']) {
    //up = true;
    Bob.levelChange();
  }
  if (keys['a']) {
    xDelta--;
  }
  if (keys['d']) {
    xDelta++;
  }
  if (keys['s']) {
    health --;
  }
  //if (up == true) { Unfinished jump feature
  //  yDelta --;
  //}
  //if (y <= 550) {
  //  up = false;
  //  yDelta = 0;
  //}

  Bob.updatePlayer(xDelta, yDelta);
}
void keyPressed() {
  if (keyPressed && key == CODED) {
    System.out.println("Hey, you can't use the arrow keys!");
    arrowCheck = true;
    return;
  }
  keys[key] = true;
}
void keyReleased() {
  if (arrowCheck == true) {
    System.out.println("Try using: W, A, S, D!");
    arrowCheck = false;
    return;
  }
  keys[key] = false;
}
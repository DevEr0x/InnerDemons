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
PImage background4;
PImage bossBackground;

//Images - Characters
PImage spriteSheet;
//Images - Enemies

//Chest object
Chest randomChest = new Chest();

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
boolean helpScreen = false;

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
boolean walking = false;

int health = 100;

//Weapons
float damageMod = 0;
float damage = 5;
float finalDamage;
int currentWeapon = 1;
PImage[] weaponImage = new PImage[10];

/*
This section below determines what items the player has in their inventory.
 If the player only has 3 items in his inventory, then only 3 items can be displayed.
 */
PImage[] inventory = new PImage[10];
int[] inventoryTrack = new int[10];
int weaponCount = 1;

//Weapon location variables
float weaponX;
float weaponY;

//Chest
int luck;
int chestAppearLuck;
boolean chestOpen = false;

void setup() {
  size(1000, 700, P3D); //Sets the size of the screen
  smooth();

  //Image Defining
  startBackground = loadImage("Starting Background.png");
  background2 = loadImage("background2.png");
  background3 = loadImage("background3.png");
  background4 = loadImage("background4.png");
  bossBackground= loadImage("boss_background.png");

  //Player Defining
  Bob = new Player();
  //Key pressing
  keys = new boolean[128];
}

void draw() {
  checks(); //Runs all the screen checks constantly
  weaponChecks(); //Constantly checks what weapon should be displayed
  characterChecks(); //Constantly checks what character should be displayed.
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
  if (helpScreen) {
    helpScreen();
  }
}

/*
This area is used to control User movement
 */

void move() {
  int xDelta=0;
  int yDelta=0;

  if (keys['w']) {
    Bob.levelChange();
  }
  if (keys['a']) {
    xDelta -=4;
  }
  if (keys['d']) {
    xDelta+=4;
  }
  if (keys['s']) {
    health --;
  }
  Bob.updatePlayer(xDelta, yDelta);
}

void keyPressed() {
  if (keyPressed && key == CODED) {
    text("Use 'W A S D' to move - using the arrow keys can crash the game!", 0, 100);
    System.out.println("Hey, you can't use the arrow keys!");
    arrowCheck = true;
    return;
  }
  keys[key] = true;
}
void keyReleased() {
  if (arrowCheck == true) {
    text("Use 'W A S D' to move - using the arrow keys can crash the game!", 0, 100);
    System.out.println("Try using: W, A, S, D!");
    arrowCheck = false;
    return;
  }
  keys[key] = false;
}
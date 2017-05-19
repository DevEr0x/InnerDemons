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
 
 
 //Scene Checking Variables
 boolean menuScreen = true;

void setup() {
  size(1000, 700); //Sets the size of the screen
  smooth();
}

void draw() {
  checks(); //Sets the 
}

//The checks in the checks function just run through, to see what screen the user is supposed to be on.
void checks(){
 if(menuScreen == true){
   menuScreen();
 }
}
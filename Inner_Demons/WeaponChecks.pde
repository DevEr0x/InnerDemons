void weaponChecks() {
  switch(currentWeapon) {
  case 1:
    //Nothing about the damage should change.
    break;
  case 2:
    damageMod= 1.1;
    break;
  case 3:
    damageMod= 1.3;
    break;
  case 4:
    damageMod = 1.4;
    break;
  case 5:
    damageMod = 1.6;
    break;
  case 6:
    damageMod = 1.7;
    break;
  case 7:
    damageMod = 1.9;
    weaponX = weaponX-20;
    break;
  case 8: 
    damageMod = 2;
    weaponX = weaponX-20;
    break;
  case 9:
    damageMod = 1.5;   
    break;
  default:
    System.out.println("Error: There is currently no weapon selected.");
    break;
  }
  weaponImage[1] = loadImage("Dagger.png"); //Dagger 1
  weaponImage[2] = loadImage("advanced_dagger.png"); //Dagger 2
  weaponImage[3] = loadImage("Sword.png"); //Sword 1
  weaponImage[4] = loadImage("advanced_sword.png"); //Sword 2
  weaponImage[5] = loadImage("Spear.png"); //Spear 1
  weaponImage[6] = loadImage("advanced_spear.gif"); //Spear 2
  weaponImage[7] = loadImage("Hammer.png"); //Hammer 1
  weaponImage[8] = loadImage("advanced_hammer.png"); //Hammer 2
  //weaponImage[9] = loadImage(""); //Bow
  //Make sure when declaring the image, that you use [currentWeapon] in the square brackets, that is so that you use the weapon that the player actually has equiped.

  /*
  This will track the inventory
   */
  inventory[1] = loadImage("Dagger.png"); //This will never change
  inventoryTrack[1] = 1; //This will never change
}

void chestOpen() {
  if (health <= 10) {
    health = 50;
    return;
  }
  luck = (int)random(1, 3);
  switch(luck) {
  case 1:
    int rand = (int) random(2, 9);
    if (weaponCount != 8) {
      weaponCount++;
      inventory[weaponCount] = weaponImage[rand];
      inventoryTrack[weaponCount] = rand;
    }
    break;
  case 2:
    health = health / 2;
    break;
  case 3:
    if (health != 100) {
      health = 100;
    }
    break;
  }
}
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
    break;
  case 8: 
    damageMod = 2;
    break;
  case 9:
    damageMod = 1.5;   
    break;
  default:
    System.out.println("There is currently no weapon selected.");
    break;
  }
  weaponImage[1] = loadImage(""); //Dagger 1
  weaponImage[2] = loadImage(""); //Dagger 2
  weaponImage[3] = loadImage(""); //Sword 1
  weaponImage[4] = loadImage(""); //Sword 2
  weaponImage[5] = loadImage(""); //Spear 1
  weaponImage[6] = loadImage(""); //Spear 2
  weaponImage[7] = loadImage(""); //Hammer 1
  weaponImage[8] = loadImage(""); //Hammer 2
  weaponImage[9] = loadImage(""); //Bow
  //Make sure when declaring the image, that you use [currentWeapon] in the square brackets, that is so that you use the weapon that the player actually has equiped.
}
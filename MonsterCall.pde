void monsterCall() {

  if (monstersDead) {
    if (level == 0) {
      monsterCount = 1;
    }
    if (level == 1) {
      monsterCount = 2;
    }
    if (level == 2) {
      monsterCount = 3;
    }
    if (level == 3) {
      monsterCount = 4;
    }
    if (level == 4) {
      monsterCount = 5;
    }
    if (level == 5) {
      monsterCount = 1;
    }
    if (level == 6) {
      monsterCount = 2;
    }
    if (level == 7) {
      monsterCount = 3;
    }
    if (level == 8) {
      monsterCount = 4;
    }
    if (level == 9) {
      monsterCount = 5;
    }
    if (level == 10) {
      monsterCount = 1;
    }
    if (level == 11) {
      monsterCount = 2;
    }
    if (level == 12) {
      monsterCount = 3;
    }
    if (level == 13) {
      monsterCount = 4;
    }
    if (level == 14) {
      monsterCount = 5;
    }
    if (level == 15) {
      monsterCount = 1;
    }
    if (level == 16) {
      monsterCount = 2;
    }
    if (level == 17) {
      monsterCount = 3;
    }
    if (level == 18) {
      monsterCount = 4;
    }
    if (level == 19) {
      monsterCount = 5;
    }
    if (level == 20) {
      monsterCount = 1;
    }
    for (int a = 0; a < monsterCount; a++) {
      enemies.add(new Monsters(600));
    }
    System.out.println(enemies.size());
    monstersDead = false;
  }

  for (int i = 0; i < enemies.size(); i++) {
    Monsters enemy = enemies.get(i);
    enemy.setupMonsters();
    enemy.drawMonsterOrc();
    enemy.updateMonsterOrc();
    System.out.println("I'm running");
  }
  //System.out.println(enemies.size());
}


//Monsters e = new Monsters(500);
//    enemy = (Monsters[]) append(enemy, e);
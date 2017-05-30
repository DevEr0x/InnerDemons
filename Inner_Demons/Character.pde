void characterChecks() {
  if (gender == "Male") {
    switch(preset) {
    case 1:
      presetVar = "Male_preset1.png";
      println("Preset 1- MALE");
      break;
    case 2:

      break;
    case 3:

      break;
    case 4:

      break;
    case 5:
      break;
    case 6:

      break;
    default:
      println("Something went wrong with Male presets.");
      break;
    }
  }
  if (gender == "Female") {
    switch(preset) {
    case 1:
      presetVar = "Female_preset1.png";
      break;
    case 2:
      presetVar = "Female_preset2.png";
      break;
    case 3:
      presetVar = "Female_preset3.png";
      break;
    case 4:
      presetVar = "Female_preset4.png";
      break;
    case 5:
      presetVar = "Female_preset5.png";
      break;
    case 6:

      break;
    default:
      println("Something went wrong with Female presets.");
      break;
    }
  }
  if (gender != "Male" && gender != "Female") {
    System.out.println("Uh oh, there's no proper gender selected!");
  }
}
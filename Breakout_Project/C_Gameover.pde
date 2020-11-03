void gameover() {
  if (lives == 0) {
    fill(0);
    text("gameover", 500, 500);
    stroke(255);
    fill(255);
    rect(200, 40, 300, 150);
    textSize(50);
    fill(0);
    text("lives: 0", 210, 100);
    textSize(25);
    text("nice try. you didn't make it through adulthood. goodnight punpun.", CENTER, CENTER);
    text("*click to restart*", CENTER, 600);
  }
  if (score == 10); {
    if (lives == 0) {
      fill(0);
      text("gameover", 500, 500);
      stroke(255);
      fill(255);
      rect(200, 40, 300, 150);
      textSize(50);
      fill(0);
      text("lives: 0", 210, 100);
      textSize(25);
      text("good job. you made it through adulthood. good morning punpun.", CENTER, CENTER);
      text("*click to restart*", CENTER, 600);
    }
  }
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 1000)
    mode = GAME;
  lives = 5;
}

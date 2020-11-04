void gameover() {
  if (lives == 0) {
    background(0);
    fill(255);
    textSize(25);
    text("you failed.", 50, 100);
    text("why did you even try?", 50, 300);
    text("just give up. what's the point of living anymore?", 50, 450);
    text("goodnight, punpun.", 50, 600);
  } else {
  }
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 1000)
    mode = INTRO;
  lives = 5;
  score = 0;
}

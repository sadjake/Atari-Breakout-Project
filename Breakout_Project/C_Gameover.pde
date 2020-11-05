void gameover() {
  if (lives == 0) {
    gameStart.pause();
    endgame.play();
    background(0);
    image(pain, 0, 0, 700, 1000);
    fill(255);
    textSize(25);
    text("click to restart", 500, 100);
    text("you failed.", 50, 100);
    text("why did you even try?", 50, 300);
    text("just give up. living is harder than dying right?", 50, 450);
    text("goodnight, punpun.", 50, 600);
  } else if (score == 16) {
    background(0);
    fill(255);
    textSize(25);
    text("click to restart", 500, 100);
    text("you did it", 50, 100);
    text("you can carry on with life now.", 50, 300);
    text("but still, living is harder than dying right?", 50, 450);
    text("goodnight, punpun.", 50, 600);
  }
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 1000)
    mode = INTRO;
    endgame.pause();
    intro.rewind();
  lives = 5;
  score = 0;
  int i = 0;
  while (i < n) {
    alive[i] = true;
    i=i+1;
  }
  paddlex = width/2;
}

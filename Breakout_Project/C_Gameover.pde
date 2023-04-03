void gameover() {
  if (lives == 0) {
    gameStart.pause();
    endgame.play();
    background(0);
    image(pain, 0, 0, 1000, 700);
    fill(255);
    textSize(25);
    text("click to restart", 500, 100);
    text("you failed.", 50, 100);
    text("goodnight, punpun.", 50, 600);
  } else if (score == 16) {
    gameStart.pause();
    endgame.play();
    background(0);
    image(punpunpic, 0, 0, 1200, 700);
    fill(255);
    textFont(goodnight);
    textSize(40);
    text("click to restart", 500, 100);
    text("you did it.", 50, 100);
    fill(255,0,0);
    text("goodnight, punpun.", 50, 600);
  }
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 1000)
    mode = INTRO;
  gameStart.pause();
  gameStart.rewind();
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

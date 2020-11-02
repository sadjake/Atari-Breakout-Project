void gameover() {
  text("gameover",500,500);
}

void gameoverClicks() {
      if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 1000)
    mode = INTRO;
    lives = 5;
}

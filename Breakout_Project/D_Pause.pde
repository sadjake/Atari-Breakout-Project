void pause () {
  fill(255,0,0);
  textSize(30);
  text("paused", 300, 100);
  text("why did you pause?", 300,200);
  text("are you stressed?", 300, 300);
}

void pauseClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME;
  }
}

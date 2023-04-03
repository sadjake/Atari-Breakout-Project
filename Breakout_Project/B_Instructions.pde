void instructions () {
  background(200);
  image(aiko, 600, 190);

  //instructions text
  fill(0);
  textSize(25);
  text("click to continue", 700, 80);
  text("good morning punpun.", 110, 80);
  text("use the paddle (left and right key or a and d key) to break all the bricks.", 25, 330);
  text("if you score 10 points, you win",25,400);
  text("if your lives reach 0,", 25,470);
  fill(255,0,0);
  textSize(30);
}

void instructionsClicks () {
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 700) mode = GAME;
}

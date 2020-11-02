void game () {
  //background
  background(255);

  //scoreboard
  textSize(50);
  fill(0);
  text("lives:" + lives, 210, 100);
  fill(0);
  timer = timer - 1;

  //draw paddle
  circle(paddlex, paddley, paddled);

  //move paddle
  if (leftkey == true) paddlex = paddlex -5;
  if (rightkey == true) paddlex = paddlex +5;
  if (akey == true) paddlex = paddlex -5;
  if (dkey == true) paddlex = paddlex +5;

  //display ball
  strokeWeight(5);
  fill(255);
  circle(ballx, bally, balld);

  // PAUSE BUTTON
    stroke(0);
    fill(255);
    circle(100, 100, 100);
    fill(0);
    text("||", 86, 119);

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  // BOUNCING
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }
  if (bally < balld/2) {
    vy = vy * -1;
  }

  //limiting the paddle
  if (paddlex < paddled/2) {
    paddlex = paddled/2;
  }
  if (paddlex < paddled/2) {
    paddlex = paddled/2;
  }
  if (paddlex > 875) {
    paddlex = 875;
  }
  if (paddlex > 875) {
    paddlex = 875;
  }

  // POINTS SCORED
  if (bally > width+balld) {
    ballx = width/2;
    bally = height/2+100;
    vx = 2 * cos(a);
    vy = 2 * sin(a);
    timer = 100;
    lives = lives - 1;
  }

  if (lives <= 0) {
    mode = GAMEOVER;
  }

  // COLLISION
  if (dist(paddlex, paddley, ballx, bally) < paddled/2 + balld/2) {
    vx = (ballx-paddlex)/20;
    vy = (bally-paddley)/20;
  }
}

void gameClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  }
}

void game () {
  //music
  intro.pause();
  gameStart.play();

  //background
  background(200);

  //draw paddle
  fill(255);
  stroke(0);
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
  textSize(75);
  text("II", 80, 119);

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  // BOUNCING
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
    bump.rewind();
    bump.play();
  }
  if (bally < balld/2) {
    vy = vy * -1;
    bump.rewind();
    bump.play();
  }

  //limiting the paddle
  if (paddlex < paddled/2) {
    paddlex = paddled/2;
  }
  if (paddlex < paddled/2) {
    paddlex = paddled/2;
  }
  if (paddlex > 900) {
    paddlex = 900;
  }
  if (paddlex > 900) {
    paddlex = 900;
  }

  // LIVES LOST
  if (bally > width+balld) {
    ballx = width/2;
    bally = height/2+100;
    vx = 2 * cos(a);
    vy = 2 * sin(a);
    timer = 100;
    lives = lives - 1;
    bump.rewind();
    bump.play();
  }

  if (lives <= 0 || score == 16) {
    mode = GAMEOVER;
  }

  // COLLISION
  if (dist(paddlex, paddley, ballx, bally) < paddled/2 + balld/2) {
    vx = (ballx-paddlex)/10;
    vy = (bally-paddley)/10;
    bump.rewind();
    bump.play();
  }

  //scoreboard 
  textSize(50);
  fill(0);
  text("lives:" + lives, 50, 650);
  text("score:" + score, 770, 650);
  timer = timer - 1;

  //bricks
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i=i+1;
  }
}

void gameClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
  }
}

void manageBrick (int i) {
  stroke(0);
  if (y[i] == 100) fill(255);
  if (y[i] == 200) fill(190);
  if (y[i] == 300) fill(120);
  if (y[i] == 400) fill(75);
  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i]) < balld/2 + brickd/2) {
    vx = (ballx-x[i])/15;
    vy = (bally-y[i])/15;
    alive[i] = false;
    score = score + 1;
    bump.rewind();
    bump.play();
  }
}

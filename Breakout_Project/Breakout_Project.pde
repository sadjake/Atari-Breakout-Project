// Breakout Project
// Jake Choi
// Block 1-2B
// October 26, 2020

//mode framework
int mode;
int lives;
int timer;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//keyboard variables
boolean akey, dkey, leftkey, rightkey;

//paddles
float paddlex, paddley, paddled;
//ball
float ballx, bally, balld;
float vx, vy;
float a;

void setup () {
  size(1000, 1000);
  background(255);
  mode = GAME;

  lives = 5;
  timer = 100;

  paddlex = width/2;
  paddley = height;
  paddled = 250;

  //initialize ball
  ballx = width/2;
  bally = height/2+100;
  balld = 50;

  vx = random(-3, 3);
  vy = random(-3, 3);
  a = radians(45);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

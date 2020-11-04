// Breakout Project
// Jake Choi
// Block 1-2B
// October 26, 2020

//mode framework
int mode;
int lives, score;
int timer;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int INSTRUCTIONS = 5;

//brick variables
int [] x;
int [] y;
int brickd;

//gif 
PImage[] gif;
int numPages;
int f;

//image 
PImage aiko;

//font
PFont goodnight;

//keyboard variables
boolean akey, dkey, leftkey, rightkey;

//paddles
float paddlex, paddley, paddled;
//ball
float ballx, bally, balld;
float vx, vy;
float a;

void setup () {
  brickd = 50;
  x = new int [4];
  y = new int [4];

  x[0] = 200;
  y[0] = 100;

  x[1] = 400;
  y[1] = 100;

  x[2] = 600;
  y[2] = 100;

  x[3] = 800;
  y[3] = 100;

  size(1000, 700);
  background(255);
  goodnight = createFont("goodnight.ttf", 200);
  aiko = loadImage("aiko.png");
  mode = INTRO;

  numPages = 20;
  gif = new PImage[numPages];

  int i = 0;
  while (i < numPages) {
    gif[i] = loadImage("frame_"+i+"_delay-0.54s.gif");
    i++;
  }

  lives = 5;
  score = 0;
  timer = 100;

  paddlex = width/2;
  paddley = height;
  paddled = 200;

  //initialize ball
  ballx = width/2;
  bally = height/2+100;
  balld = 20;

  vx = random(-3, 3);
  vy = random(1, 3);
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
  } else if (mode == INSTRUCTIONS) {
    instructions();
  } else {
    println("Mode error: " + mode);
  }
}

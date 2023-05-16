// Breakout Project
// Jake Choi
// October 26, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framework
int mode;
int lives, score;
int timer;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int INSTRUCTIONS = 5;

// SOUND VARIABLES
Minim minim;
AudioPlayer intro, gameStart, endgame, bump;

//arrays
int [] x;
int [] y;
boolean [] alive;
int brickd;
int n;
int tempx, tempy;

//gif 
PImage[] gif;
int numPages;
int f;

//image 
PImage aiko;
PImage pain;
PImage punpunpic;

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
  n=16;
  x = new int [n];
  y = new int [n];
  alive = new boolean[n];
  tempx = 200;
  tempy = 100;

  int e = 0;
  while (e < n) {
    x[e] = tempx;
    y[e] = tempy;
    alive[e] = true;
    tempx = tempx + 200;
    if (tempx == width) {
      tempx = 200;
      tempy = tempy + 100;
    }
    e=e+1;
  }

  size(1000, 700);
  background(255);
  goodnight = createFont("goodnight.ttf", 200);
  aiko = loadImage("aiko.png");
  pain = loadImage("pain.jpg");
  punpunpic = loadImage("punpunpic.jpg");
  mode = INTRO;

  numPages = 20;
  gif = new PImage[numPages];

  int i = 0;
  while (i < numPages) {
    gif[i] = loadImage("frame_"+i+"_delay-0.54s.gif");
    i++;
  }

  lives = 3;
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

  //minim
  minim = new Minim(this);
  intro = minim.loadFile("shootingstar.mp3");
  gameStart = minim.loadFile("lastflower.mp3");
  bump = minim.loadFile("paddle.wav");
  endgame = minim.loadFile("shootingstar.mp3");
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

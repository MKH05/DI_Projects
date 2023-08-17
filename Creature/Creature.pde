import processing.sound.*;

//Movement
float x,y;
int speed = 2;
int direction = 1;

boolean moveUp = false;
boolean moveDown = false;
boolean moveLeft = false;
boolean moveRight = false;

//Graphics
PImage[] frames = new PImage[8];   
int currentFrame = 0;
int animationFrameRate = 12;
int lastAnimationFrameTime = 0;

float MonsterSize = 400;

PImage sky;

PImage box;

//Sound
SoundFile bgMusic;

//Text
PFont bit;

String text = "Bob The Bat";
int textsize = 9;

int textX = 60;
int textY = 595;

//Variabels
int boxX = 50;
int boxY = 550;
int boxSizeX = 123;
int boxSizeY = 80;

void setup() { 
  size(1150, 644);
  x = width/2;
  y = height/2;
  
  bit = createFont("PressStart2P-vaV7.ttf", textsize); 
  box = loadImage("Box.png");
  
  sky = loadImage("Sky.PNG");
  background(sky);
  
  for (int i = 0; i < frames.length; i++) {
    frames[i] = loadImage("Frame" + (i + 1) + ".png");
  }
  
  bgMusic = new SoundFile(this, "Music.mp3");
  bgMusic.amp(0.5);
  bgMusic.loop();
}

void keyPressed() {
  if (keyCode == 'w' || keyCode == 'W') {
    moveUp = true;
  } else if (keyCode == 's' || keyCode == 'S') {
    moveDown = true;
  } else if (keyCode == 'a' || keyCode == 'A') {
    moveLeft = true;
    direction = -1;
  } else if (keyCode == 'd' || keyCode == 'D') {
    moveRight = true;
    direction = 1;
  }
}

void keyReleased() {
  if (keyCode == 'w' || keyCode == 'W') {
    moveUp = false;
  } else if (keyCode == 's' || keyCode == 'S') {
    moveDown = false;
  } else if (keyCode == 'a' || keyCode == 'A') {
    moveLeft = false;
  } else if (keyCode == 'd' || keyCode == 'D') {
    moveRight = false;
  }
}

void updateAnimation() {
  currentFrame = (currentFrame + 1) % frames.length;
}

void draw() {
  background(sky);
  image(box, boxX, boxY, boxSizeX, boxSizeY);
  
  textFont(bit);
  text(text, textX, textY); 
  fill(0);

  if (millis() - lastAnimationFrameTime >= 1000 / animationFrameRate) {
    updateAnimation();
    lastAnimationFrameTime = millis();
  }

  scale(direction, 1);
  image(frames[currentFrame], x * direction, y, MonsterSize * direction, MonsterSize);
  
  if (moveUp) {
    y -= speed;
  } else if (moveDown) {
    y += speed;
  }

  if (moveLeft) {
    x -= speed;
    direction = -1;
  } else if (moveRight) {
    x += speed;
    direction = 1;
  }
}

void stop() {
  bgMusic.stop();
  super.stop();
}

// GamePlay
float posX, posY;
float coinX, coinY;
int CoinsCollected = 0;
int Highscore = 0;
String[] DataStorage;

// Movement
float x, y;
int xspeed = 5;
int yspeed = 5;

// Graphics
int circleRadius = 10;

// Logic
boolean clicked = false;
boolean spawned = false;

void setup() {
  size(1200, 1000);
  background(204);

  x = width / 2;
  y = height / 2;
  
  DataStorage = loadStrings("saveData.txt");
  if (DataStorage.length > 0) {
    Highscore = int(DataStorage[0]);
  }
  
  for (String line : DataStorage) {
    println(line);
  }
}

void mouseClicked() {
  if (!clicked) {
    clicked = true;
  }

  posX = mouseX;
  posY = mouseY;
}

void draw() {
  background(204);

  if (!clicked) {
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(0);
    text("Press to start", width / 2, height / 2);
    return;
  }

  fill(0);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Coins = " + CoinsCollected, width - textWidth("Coins = ") - 20, 20);
  text("Highscore = " + Highscore, width - textWidth("Highscore = ") - 20, 40);

  x += xspeed;
  y += yspeed;

  fill(0);
  ellipse(x, y, circleRadius * 2, circleRadius * 2);

  stroke(167);
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
  stroke(0);
  
  line(posX, 0, posX, height);
  line(0, posY, width, posY);
  
  if (x >= posX - circleRadius && x <= posX + circleRadius && y >= 0 && y <= height) {
    xspeed = -xspeed;
  }

  if (y >= posY - circleRadius && y <= posY + circleRadius && x >= 0 && x <= width) {
    yspeed = -yspeed;
  }
  
  if (x > width || x < 0) {
    xspeed = -xspeed;
  }
  if (y > height || y < 0) {
    yspeed = -yspeed;
  }

  if (!spawned) {
    spawned = true;
    coinX = random(width);
    coinY = random(height);
  }

  float distance = dist(x, y, coinX, coinY);
  
  if (distance <= circleRadius + 5) {
    if (spawned) {
      spawned = false;
      CoinsCollected++;
      coinX = random(width);
      coinY = random(height);
      
      if (CoinsCollected > Highscore) {
        Highscore = CoinsCollected;
       }
    }
  }

  fill(255, 0, 0);
  ellipse(coinX, coinY, circleRadius * 2, circleRadius * 2);
}

void exit() {
  if (CoinsCollected > Highscore) {
    Highscore = CoinsCollected;
  }
  
  String[] dataToSave = {str(Highscore)};
  saveStrings("saveData.txt", dataToSave);
  
  super.exit();
}

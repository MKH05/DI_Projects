int Afstand = 12;

void setup() {
  size(500, 500);
  background(0);
  noStroke();
  
  for (int i = 0; i <= 20; i++ ){
    float yOffset = i * Afstand;
    
    for (int f = 0; f <= i; f++ ){
      float xOffset = f * Afstand;
      
      fill(255 - i * 12.5);
      
      rect(width/2 + xOffset, yOffset, 10, 10);
      rect(width/2 - xOffset, yOffset, 10, 10);
    }
  }
}

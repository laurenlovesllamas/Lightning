void setup(){
  size(1200, 1200);
  background(0);
}

void draw(){
  background(0);
  
  
  noStroke(); 
  fill(255,255,255);
  
  drawCat();
  
  drawLighting(550, 125);
  drawLighting(640, 125);
 
}

void drawCat() { 
  noStroke();
  fill(255, 255, 255);
  
  // Left ear 
  triangle(490, 150, 555, 10, 600, 150); 
  // Right ear 
  triangle(600, 150, 635, 10, 720, 150);
  // Head 
  ellipse(600, 150, 250, 150);
  
  fill(0, 0, 0);
  // Left eye 
  ellipse(550, 125, 10, 10);
  // Right eye 
  ellipse(640, 125, 10, 10);
  // Mouth 
  textSize(60);
  text("^", 580, 170);
}

void drawLighting(int startX, int startY) {
  int x = startX;
  int y = startY; 
  
  stroke(255, 225, 0);
  strokeWeight(2);
  
  while (y < height) { 
    int newX = x + int(random(-20, 20));
    int newY = y + int(random(10, 20));
    
    line(x, y, newX, newY);
    x = newX;
    y = newY;
  }
}

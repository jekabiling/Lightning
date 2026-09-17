int startX = 0;
int startY = 100;
int endX = 0;
int endY = 0;
float lightningA = 0;
float flashA = 0;

void setup() {
  size(500, 500);
  strokeWeight(2);
}

void draw() {
  background(5, 8, 28);
  if (lightningA > 0) {
    stroke(255, 255, 0, lightningA);
    int x = startX;
    int y = startY;
    while (y < height) {
      int endX = x + (int)(Math.random() * 19) - 9;
      int endY = y + (int)(Math.random() * 10) + 5;
      line(x, y, endX, endY);
      x = endX;
      y = endY;
    }
    lightningA -= 8;
  }
  
  // Clouds
  noStroke();
  fill(55, 60, 80);
  ellipse(40, 100, 130, 80);
  ellipse(100, 80, 160, 100);
  ellipse(170, 105, 140, 80);
  ellipse(330, 75, 150, 90);
  ellipse(400, 100, 180, 100);
  ellipse(475, 80, 120, 80);
  
  fill(80, 75, 100);
  ellipse(20, 140, 140, 90);
  ellipse(80, 125, 170, 100);
  ellipse(150, 140, 150, 80);
  ellipse(280, 130, 170, 100);
  ellipse(350, 145, 160, 90);
  ellipse(440, 135, 150, 100);
  
  fill(120, 120, 135);
  ellipse(70, 115, 150, 100);
  ellipse(150, 95, 180, 120);
  ellipse(230, 115, 170, 110);
  ellipse(320, 110, 180, 120);
  ellipse(400, 100, 170, 110);
  ellipse(480, 125, 130, 90);
 
  // Moon
  noStroke();
  fill(220, 220, 190);
  ellipse(410, 70, 60, 60);
  
  // More clouds
  fill(180, 180, 185);
  ellipse(120, 120, 150, 100);
  ellipse(200, 100, 180, 130);
  ellipse(300, 105, 200, 140);
  ellipse(380, 125, 150, 100);

  // Stars
  fill(220, 220, 180);
  ellipse(50, 50, 3, 3);
  ellipse(90, 35, 2, 2);
  ellipse(140, 55, 3, 3);
  ellipse(450, 40, 3, 3);
  ellipse(470, 110, 2, 2);
  ellipse(40, 180, 2, 2);
  ellipse(460, 200, 3, 3);
  ellipse(80, 220, 2, 2);
  ellipse(420, 250, 2, 2);
  ellipse(200, 240, 2, 2);
  ellipse(220, 340, 2,2);
  ellipse(340, 220, 2, 3);
  ellipse(100, 360, 2,2);
  ellipse(400, 380, 3,3);

  // Flash
  if (flashA > 0) {
    noStroke();
    fill(255, 255, 255, flashA);
    rect(0, 0, width, height);
    flashA -= 3;
  }
}

void mousePressed() {
  startX = (int)(Math.random() * 320) + 90;
  startY = 100;
  endX = 0;
  endY = 0;
  lightningA = 255;
  flashA = 70;
}


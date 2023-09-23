int startX=270;
int endX=startX;
int startY=250;
int endY= startY;
PImage img;

void setup() {
  size(500, 500);
  img = loadImage("98973-nyan-cat-hd-image-free.png");
  image(img, 220, 130, width / 2, height / 2);
  strokeWeight(5);
  background(#121934);
}

void draw() {
  image(img, 220, 130, width / 2, height / 2);
  fill(0,20);
  noStroke();
  rect(0,0, width, height);
  
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  
  while (endX >= 0) {
    endX = startX + ((int)(Math.random() * 10)-10);

    endY = startY + ((int)(Math.random() * 10) -4);

    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed() {
  // Reset the starting coordinates to the left edge of the image
  startX = 270;
  startY = 250;
  endX = startX;
  endY = startY;
}

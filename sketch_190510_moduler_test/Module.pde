
class Module {
  int xOffset;
  int yOffset;
  float x, y;
  int unit;
  int xDirection = 1;
  int yDirection = 1;
  float speed; 

  // Contructor
  Module(int xOffsetTemp, int yOffsetTemp, int xTemp, int yTemp, float speedTemp, int tempUnit) {
    xOffset = xOffsetTemp;
    yOffset = yOffsetTemp;
    x = xTemp;
    y = yTemp;
    speed = speedTemp;
    unit = tempUnit;
  }

  // Custom method for updating the variables
  void update() {
    x = x + (speed * xDirection);
    if (x >= unit || x <= 0) {
      xDirection *= -1;
      x = x + (1 * xDirection);
      y = y + (1 * yDirection);
    }
    if (y >= unit || y <= 0) {
      yDirection *= -1;
      y = y + (1 * yDirection);
    }
  }

  // Custom method for drawing the object
  void display() {
    fill(255);
    ellipse(xOffset + x, yOffset + y, 6, 6);
  }
}

//class Particle {
//  float x;
//  float y;  
//  float d;
//  float c;
//  float count;
//  float diameter;
//  float vX;
//  float vY;
//  float gravity;

//  // Constructor=
//  Particle(float tempX, float tempY, float tempD, float tempCount) {
//    x = tempX;
//    y = tempY;
//    d = tempD;
//    c = tempCount;
//    vX = 1;
//    vY = -10;
//    gravity = 1;
//  }

//  // Custom method for updating the variables
//  void update(Particle other) {
//    ellipse(other.x, other.y, 2, 2);
//    beginShape(POINTS);
//    vertex(x, y);
//    endShape();

//    x += vX;
//    y += vY;
//    vY += 1;

//    if (y > 300) {
//      vY *= -0.5;
//      //vX *= 0.9;
//      y = 300;
//    }
//    //vY += gravity;
//  }

//  void display() {
//    stroke(0);
//  }
//}

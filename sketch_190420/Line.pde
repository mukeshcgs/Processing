class Line {
  float x1, x2;
  float y1, y2;  
  float d;
  float c;
  float count;
  float diameter;
  float vX1, vY1, vX2, vY2;
  float gravity;
  float easing = 0.05;
  boolean isFinished = false;
  float angle = PI;

  // Constructor
  Line(float tempX1, float tempY1, float tempX2, float tempY2, float tempD, float tempCount) {
    x1 = tempX1;
    y1 = tempY1;
    x2 = tempX2;
    y2 = tempY2;
    d = tempD;
    c = tempCount;
    vX1 = 1;
    vY1 = 50;
    vX2 = 1;
    vY2 = 50;
  }

  // Custom method for updating the variables
  void update() {    
    if (y1 < 100 || y2 < -100) {
      y1 += vY1 * easing;
      y2 -= vY2 * easing;
    } 
  }

  void display() {
    stroke(0);
    translate(width / 2, height / 2);
    line(x1, y1, x2, y2);
    if (angle <= HALF_PI*4) {
       angle += 0.08;
    }
    //ellipse(x, y, d, d);
    //beginShape(POINTS);
    //vertex(x, y);
    //endShape();
  }
}

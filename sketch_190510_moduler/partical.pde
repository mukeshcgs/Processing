class Particle {
  float x;
  float y;  
  float d;
  float c;
  float count;
  float diameter;
  float vX;
  float vY;
  float gravity;
  float life;
  float maxLife;
  float pIndex;
  float pId;
  color[] PALLATE = {#900c3f, #c70039, #ffd166, #ff5733, #ffc300};
  float randCol = random(0, PALLATE.length);

  // Constructor
  Particle(float tempX, float tempY, float tempD, float tempCount) {
    x = tempX;
    y = tempY;
    d = tempD;
    c = tempCount;
    vX = 0.01;
    vY = 0.01;
    gravity = 1;
    life = 0;
    maxLife = 50;
    pIndex ++;
  }

  // Custom method for updating the variables
  void update() {
    //x += vX;
    //y += vY;
    //vY += 1;
    if (life <= maxLife) {
      //if (!isOffScreen()) {
      x += vX;
      y += vY;
      vX -= random(-0.5, 0.5);
      vY -= random(-0.5, 0.5);
      //}
    }
    //if (y > 300) {
    //  vY *= -0.5;
    //  vX *= 0.9;
    //  y = 300;
    //}
    //vY += gravity;
    life ++;
  }

  void display() {
    stroke(PALLATE[int(randCol)]);
    //noStroke();
    fill(PALLATE[int(randCol)]);
    //ellipse(x, y, d, d);
    beginShape(POINTS);
    vertex(x, y);
    endShape();
  }

  boolean isOffScreen() {
    return x < 100 || x > width-100 || y < 100 || y > height-100;
  }
}

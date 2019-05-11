class Particals {
  //Global Varibale

  float posX;
  float posY;
  float diameter;
  float pCount;

  //Counstructor
  Particals(float tempD, float tempC) {
    posX = width/2;
    posY = height/2;
    diameter = tempD;
    pCount = tempC;
  }

  void display() {
    for (float a = 0; a < pCount; a ++) {
      ellipse(random(1)*posX, posY, 30, 30);
    }
  }
  void update() {
    posX ++;
  }
  void show() {
  }
}

int total = 100;
Particle[] parts;

void setup() {
  size(400, 400);
    background(0,50);

  noStroke();
  parts = new Particle[total];
  float ss = 0;
  for (int i = 0; i < total; i ++ ) { 
    parts[i] = new Particle(map(ss, 0, 100, 0, width), height/2, 2, 1);
    ss ++;
  }
}
void draw() {
  smooth();
  for (int i = 0; i < total; i++) { 
    parts[i].update();
    parts[i].display();
    if (parts[i].isOffScreen()) {
    }
  }
}

int total = 100;
Particle[] parts;

void setup() {
  size(800, 800);
  noStroke();
  parts = new Particle[total];
  float ss = 0;
  for (int i = 0; i < total; i ++ ) { 
    parts[i] = new Particle(map(ss, 0, 100, 0, width), height/2, 0, 1);
    ss ++;
  }
}
    float d = 0;

void draw() {
  background( 0, 0, 0, 50);
  smooth();
  for (int i = 0; i < total; i++) { 
    parts[i].update();
    parts[i].display();
    if (parts[i].isOffScreen()) {
    }
    ellipse(50+d, 50+d, 100, 100);
    d += 0.1;
  }
}

void setup() {
  size(300, 300);
  frameRate(60);
}
float x=150, y=150, xn=150, yn=150;
void draw() {
  background(255);
  x = x + random(-5, 5);
  y = y + random(-5, 5);
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
  line(x, y, xn, yn);
  xn = x;
  yn = y;
}

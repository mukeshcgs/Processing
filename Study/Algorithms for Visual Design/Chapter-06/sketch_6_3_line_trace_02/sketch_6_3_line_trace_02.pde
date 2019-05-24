void setup() {
  background(#ffbd3a);
  size(300, 300);
  frameRate(60);
}
float x=150, y=150, xn=150, yn=150;
void draw() {
  //background(255);
  if (random(1.)>0.5)
    x = x + random(-10, 10);
  else
    y = y + random(-10, 10);  
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
  line(x, y, xn, yn);
  xn = x;
  yn = y;
}

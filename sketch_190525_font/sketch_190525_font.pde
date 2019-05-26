
color[] PALLATE = {#900c3f, #c70039, #ffd166, #ff5733, #ffc300};
float tileSize = 40;
String s = "कखगघङचछजझञटठडढणतथदधनपफबभमयरलळवहशषसअआइईउऊएऐओऔ";
//String s = "अआइईउऊएऐओऔ";
float x = 10;
void mousePressed() {
    save("screen-####.jpg");
}

void setup() {
  size(416, 740);
  background(0);
  PFont f = createFont("DV_ME_Shree0709-48", 20);
  textFont(f);
  noLoop();
}

void draw() {
  //for (int i = 0; i < s.length(); i++) {
  //  float randCol = random(0, PALLATE.length);
  //  char c = s.charAt(i);
  //  fill(PALLATE[int(randCol)]);
  //  text(s.charAt(i), x, random(height/2, height/2));
  //  x = x + textWidth(c);
  //}

  for (int i =0; i<width; i += tileSize) {
    for (int j =0; j<height; j += tileSize) {
      float randCol = random(0, PALLATE.length);
      fill(PALLATE[int(randCol)]);
      noStroke();
      rectMode(CENTER);
      rect(i+tileSize/2, j+tileSize/2, tileSize, tileSize);
      pushMatrix();
      //float randCol2 = random(0, PALLATE.length);
      //fill(PALLATE[int(randCol2)]);
      fill(255);
      textAlign(CENTER, CENTER);
      int ss = floor(random(s.length()));
      char c = s.charAt(ss);
      x = x + textWidth(c);
      text(s.charAt(ss), i+tileSize/2, j+tileSize/2.5);
      popMatrix();
    }
  }
}

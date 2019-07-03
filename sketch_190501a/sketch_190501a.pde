color FG = #111111;
color BG = #f1f1f1;
float tileSize = 50;
float posX = 0;

//Random Color select

//color[] PALLATE = {#1be7ff, #f8333c, #8f2d56, #6eeb83, #e4ff1a};
//color[] PALLATE = {#333232, #4c5454, #f3a712, #db2b39, #447604};
//color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
color[] PALLATE = {#26547c, #ef476f, #ffd166, #23af82};
//color[] PALLATE = {#a0006b, #ffb533, #f95c41, #9ec630, #ff959b};
float randCol = random(0, PALLATE.length);

void setup(){
  size (400, 400);
  //size (2696, 3305); //iPad Cases & Skins
  //size (4600, 3000); //Laptop Skins
  stroke(#ffffff);
  noLoop();
  background(0);
    //background(PALLATE[int(randCol)]);
};
void mousePressed() {
}
void draw(){
  noFill();
  //background(PALLATE[int(randCol)]);
  for(int y =0; y<height; y += tileSize){
    for(int x =0; x<=width+1; x += tileSize){
      //ellipse(x+tileSize/2, y+tileSize/2, tileSize, tileSize);
    }
  }  
  for(int y =0; y<height; y += tileSize){
    for(int x =0; x<width; x += tileSize){
      color c = 0x00000000;
      //stroke(0);
      noStroke();
      if (random(0, 1) > 0.5) {
      //fill(#26547c);
      float randCol = random(0, PALLATE.length);
      fill(PALLATE[int(randCol)]);
      triangle(x, y, x, y+tileSize, x+tileSize, y+tileSize);
      //fill( #ef476f);
      //fill(#26547c);
      float randCol2 = random(0, PALLATE.length);
      fill(PALLATE[int(randCol2)]);
        triangle(x, y, x+tileSize, y, x+tileSize, y+tileSize);
      } else {
        //fill(#23af82);
              //fill(#26547c);
      float randCol3 = random(0, PALLATE.length);
      fill(PALLATE[int(randCol3)]);
        triangle( x, y, x+tileSize, y,x, y+tileSize);
        //fill(#ffd166);
              //fill(#26547c);
      float randCol4 = random(0, PALLATE.length);
      fill(PALLATE[int(randCol4)]);
        triangle(x+tileSize, y, x+tileSize, y+tileSize, x, y+tileSize);
      }
}
  }
  save("screen-laptop-skins.jpg");
}

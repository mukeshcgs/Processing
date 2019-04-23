color FG = #111111;
color BG = #f1f1f1;
float tileSize = 20;
float tileSize = 50;
float posX = 0;

void setup(){
  size (400, 400);
  stroke(#ffffff);
  noLoop();
  //background(PALLATE[int(randCol)]);
};

void draw(){
  noFill();
  background(PALLATE[int(randCol)]);
  for(int y =0; y<height; y += tileSize){
    for(int x =0; x<=width+1; x += tileSize){
      //ellipse(x+tileSize/2, y+tileSize/2, tileSize, tileSize);
    }
  }  
  for(int y =0; y<height; y += tileSize){
    println(y);
    for(int x =0; x<width; x += tileSize){
      float randCol = random(0, PALLATE.length);
      color c = 0x00000000;
      fill(PALLATE[int(randCol)]);
      noStroke();
      ellipse(x, y, 4, 4);
      stroke(PALLATE[int(randCol)]);
            
      //rect(x, y, tileSize, tileSize);
      if (random(0, 1) > 0.5) {
        line(x, y, x+tileSize, y+tileSize);
      } else {
        line(x+tileSize, y, x, y+tileSize);
      }
  noLoop();
  background(BG);
};

void draw(){
  fill(0);
  noStroke();
  //ellipse(posX, 46, 55, 55);
  for(int y = int(tileSize); y<height; y += tileSize){
    for(int x =int(tileSize); x<width; x += tileSize){
      //translate(x, y);
      //line(x, y, height, 75);
      //rect(x, y, tileSize, tileSize);
      ellipse(x, y, 2, 2);    }
  }  
}

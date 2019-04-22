color FG = #111111;
color BG = #f1f1f1;
float tileSize = 50;
float posX = 0;
void setup(){
  size (400, 400);
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
      ellipse(x, y, 2, 2);
    }
  }  
}

color FG = #111111;
color BG = #f1f1f1;

float tileSize = 20;

float posX = 0;
void setup(){
  size (400, 400);
};

void draw(){
  noFill();
  background(BG);
        ellipse(posX, 46, 55, 55);

  for(int y =0; y<height; y += tileSize){
    for(int x =0; x<width; x += tileSize){
      //translate(x, y);
      //line(x, y, height, 75);
      rect(x, y, tileSize, tileSize);
    }
  }  
}

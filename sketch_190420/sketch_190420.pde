color FG = #111111;
color BG = #f1f1f1;

//Random Color select
color[] PALLATE = {#30bced, #d16014, #e3e4db, #23395b, #050401};
//color[] PALLATE = {#26547c, #ef476f, #ffd166, #23af82, #fcfcfc};
//color[] PALLATE = {#a0006b, #ffb533, #f95c41, #9ec630, #ff959b};
float randCol = random(0, PALLATE.length);

float tileSize = 50;
float posX = 0;

void setup(){
  size (400, 400,P3D);
  stroke(#ffffff);
  noLoop();
  background(#cccccc);
};

void draw(){
  noFill();
  //background(PALLATE[int(randCol)]);
  for(int y =0; y<height; y += tileSize){
    for(int x =0; x<=width+1; x += tileSize){
      //ellipse(x+tileSize/2, y+tileSize/2, tileSize, tileSize);
      line(x, y,x,y);
    }
  }  
  for(int y = 50 ; y<height-tileSize; y += 10){
    println(y);
      //translate(width/2,height/2);
    //float randCol = random(0, PALLATE.length);
      color c = 0x00000000;
      fill(PALLATE[int(randCol)]);
      noStroke();
      stroke(PALLATE[int(randCol)]);
    line(0,y,100,y);
    ellipse(0,y,5,5);
    ellipse(100,y,5,5);
    for(int x =0; x<width; x += tileSize){
      
    }
  }
      save("screen-####.jpg");
}

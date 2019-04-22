color FG = #111111;
color BG = #f1f1f1;
float tileSize = 50;
float posX = 0;

String pi;
int[] digits;
int[] counts = new int[10];
int index = 0;
void setup(){
  size (400, 400);
  noLoop();
  background(BG);
  pi =loadStrings("pi-billion.txt")[0];
  println(pi.length());
  String[] sdigits =pi.split("");
  digits = int (sdigits);
    println(sdigits.length);

};

void draw(){
  fill(0);
  noStroke();
  int currentDigit = digits[index];
  index++;
  counts[currentDigit]++;
  
  for(float i = 0; i < counts.length; i++){
    
  }
  
  for(int y   = int(tileSize); y<height; y += tileSize){
    for(int x =int(tileSize); x<width; x += tileSize){
      ellipse(x, y, 2, 2);
    }
  }  
}

PImage img;
PImage bird1;
Bird bird;
Pipe pipe1;
Pipe pipe2;
int score = 0;
void setup() {
  img = loadImage("city.jpg");
  bird1 = loadImage("bird1.jpg");
  size(600,400);
  bird = new Bird();
  pipe1 = new Pipe(width);
  pipe2 = new Pipe(width/2);
}
void pass() {
  if (pipe1.x + pipe1.w < 0) {
    pipe1 = new Pipe(width);
    score++;
  }
  if (pipe2.x + pipe2.w < 0) {
    pipe2 = new Pipe(width);
    score++;
  }
  
}
void keyPressed() {
  if (key == ' ') {
    bird.v -= 20;
  }
}
void hit() {
  //upper pipe
  if (bird.x + bird.r/2 >= pipe1.x && bird.y <= pipe1.y + pipe1.h || bird.x + bird.r/2> pipe2.x &&  bird.y < pipe2.y + pipe2.h) {
    bird.hits = true;
  }
  //lower pipe
  if (bird.x + bird.r/2 >= pipe1.x && bird.y >= pipe1.h + pipe1.gaps|| bird.x + bird.r/2> pipe2.x &&  bird.y >= pipe2.h + pipe2.gaps) {
    bird.hits = true;
  }
  if (bird.hits) {
    bird = new Bird();
    pipe1 = new Pipe(width); 
    pipe2 = new Pipe(width/2);
    score = 0;
  }
} 
void Score() {
  textSize(20);
  text(score, 20, 20);
}

void draw() {
  image(img,0,0,width,height);
  bird.show();
  
  bird.update();
  hit();
  pipe1.show();
  pipe1.update();
  pipe2.show();
  pipe2.update();
  pass();
  Score();
  
}

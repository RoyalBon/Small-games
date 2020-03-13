class Pipe {
  float x = width;
  float y = 0;
  float w = 50;
  float h = random(10, height*2/3-50);
  float gaps = height*3/9;
  Pipe(float x_) {
    x = x_;
  }
  void update() {
    x = x - 5;
  }
  void show() {
    rect(x, y, w, h);
    rect(x, h + gaps, w, height -  h - gaps);
  }
}

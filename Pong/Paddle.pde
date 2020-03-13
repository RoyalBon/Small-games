class Player {
  float x;
  float w = 20;
  float h = 200;
  float y = height/2 - h/2;
  Player(float x_) {
    x = x_;
  }
  void show() {
    fill(255);
    rect(x, y, w, h);
  }
}

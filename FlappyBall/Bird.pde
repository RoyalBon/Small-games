class Bird {
  float x = width/10;
  float y = height/2;
  float r = 30;
  float v = 0;
  float g = 0.6;
  boolean hits = false;

  void update() {
    v += g;
    v *= 0.98;
    y += v;
    if (y > height - r) {
      y = height - r/2; 
      v = 0;
    }
    if (y < r/2) {
      y = r/2;
      v = 0;
    }
  }




  void show() {
    ellipseMode(CENTER);
    ellipse(x, y, r, r);
    image(bird1, x - r/2, y -r/2 , r, r);
  }
}

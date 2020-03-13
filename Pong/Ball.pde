class Ball {
  float x = int(random(width));
  float y = int(random(height));
  float acc = 10;
  float r = 25;

  void show() {
    fill(255);
    background(0);
    ellipseMode(RADIUS);
    ellipse(x, y, r, r);
  }
  void hit() {
    if (x <= player.x + 20 && y < player.y + player.h && y > player.y) {
      xdir *= -1;
      ydir *= -1;
      acc += 2;
      player.h -= 5;
      score += 1;
      t += 10;
    }
  }
  void update() {
    x = x + (acc * xdir);
    y = y + (acc * ydir);
    if (x > width || x < 0) {
      xdir *= -1;
    }
    if (y > height-r || y < r) {
      ydir *= -1;
    }
  }
}

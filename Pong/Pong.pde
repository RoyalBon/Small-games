int xdir = 1;
int ydir = 1;
int score = 0;
int t = 50;
Ball ball;
Player player;
void setup() {
  fill(0);
  size(1000, 600);
  ball = new Ball();
  player = new Player(20);
}

void keyPressed() {
  if (key == 'w') {
    player.y -= 10;
    player.y = constrain(player.y, 0, height-player.h);
  }
  if (key == 's') {
    player.y += 10;
    player.y = constrain(player.y, 0, height-player.h);
  }
}

void Pass() {
  if (ball.x <= 0) {
    ball = new Ball();
    score -= 1;
  }
}

void draw() {
  ball.hit();
  ball.show();
  ball.update();
  player.show();
  Pass();
  textAlign(CENTER);
  textSize(t);
  text(score, width/2, height/2);
}

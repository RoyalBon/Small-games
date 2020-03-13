float A;
float o = 1 * PI;
float pha1 = 0;
float t = 0;
float pha = o*t + pha1;
float x;
float y;
float x1 = 20;
float v = -A * o * sin(pha);
float time = 0;
String  t1 = "n";
void setup () {
  size(800, 600); 
  A = x*x + (v*v)/(o*o);
  noFill();
}
void keyPressed() {
  if (key == ' ') {
    t1 = "y";
  } 
  if (key == 'c'){
    t1 = "n";
  }
}
void draw () {
  background(0);
  translate(width/2, height/2);
  A = 200;
  if (t1 != "y") {
    t = millis();
  }
  v = -A * o * sin(pha);
  x = round(A * cos(o*t/1000+ pha1));
  y = round(A * -sin(o*t/1000+ pha1));
  if (x == A || x == -A) {
    time = time +0.5;
  }
  //text
  text(time, width*1/3, height*2/10);
  text("|x| = A:", width*1/3-50, height*2/10);
  text(t/1000, width*1/3, height*3/10);
  text("t:", width*1/3-50, height*3/10);
  text(x/10, width*1/3, height*4/10);
  text("x:", width*1/3-50, height*4/10);
  text("Press _ to stop time and 'c' to continue",-width*1/3,height*1/3);
  //draw
  stroke(255);
  line(-A, 0, A, 0);
  line(0, -A, 0, A);
  ellipse(0, 0, 2*A, 2*A);
  ellipse(x, y, 10, 10);
  ellipse(x, 0, 10, 10);
  ellipse(0, y, 10, 10);
}

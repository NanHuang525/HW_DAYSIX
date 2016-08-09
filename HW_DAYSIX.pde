int rectXY [][] = new int[10000][4]; 
int a = 0;

void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  noStroke();
  rectMode(CENTER);
  for (int i = 0; i < a; i++) {
    fill(rectXY[i][2],rectXY[i][3],255);
    rect(rectXY[i][0], rectXY[i][1], 50, 25);
    rectXY[i][1] += -1;
  }
}

void mousePressed() {
  rectXY[a][0] = mouseX;
  rectXY[a][1] = mouseY;
  rectXY[a][2] = (int)random(255);
  rectXY[a][3] = (int)random(255);
  a++;
}
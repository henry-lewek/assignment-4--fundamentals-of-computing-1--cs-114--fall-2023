
public void drawBoard() {
int[][] board = new int[3][3]; // 0 represents an empty square, 1 represents 'O' (user), 2 represents 'X' (computer)


void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
  textSize(32);
}

void draw() {
  background(255);
  drawBoard();
}

void drawBoard() {
  float w = width / 3;
  float h = height / 3;

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      float x = j * w;
      float y = i * h;

      stroke(0);
      fill(255);
      rect(x, y, w, h);
    }
  }
}
}

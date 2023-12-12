void drawBoard() {
  float cellSize = width / 3;

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      float x = j * cellSize;
      float y = i * cellSize;

      stroke(0);
      fill(255);
      rect(x, y, cellSize, cellSize);

      if (board[i][j] == 1) {
        drawCircle(x, y, cellSize);
      } else if (board[i][j] == 2) {
        drawX(x, y, cellSize);
      }
    }
  }
}

void drawCircle(float x, float y, float size) {
  ellipse(x + size / 2, y + size / 2, size * 0.8, size * 0.8);
}

void drawX(float x, float y, float size) {
  line(x + size * 0.2, y + size * 0.2, x + size * 0.8, y + size * 0.8);
  line(x + size * 0.2, y + size * 0.8, x + size * 0.8, y + size * 0.2);
}

boolean checkLine(int a, int b, int c) {
  return (a != 0 && a == b && b == c);
}

int[][] board = new int[3][3];

void draw() {
  background(255);
  drawBoard();
}

void drawBoard() {
  float w = width / 3;
  float h = height / 3;

  for (int i = 0; i < 3; i++) { // Code for printing the TTT board
    for (int j = 0; j < 3; j++) {
      float x = j * w;
      float y = i * h;

      stroke(0);
      fill(255);
      rect(x, y, w, h);

    if (board[i][j] == 1) { // Code for O and X
      fill(0, 0, 0);
      ellipse(x + w / 2, y + h / 2, w * 0.8, h * 0.8);
    } else if (board[i][j] == 2) {
      fill(255, 0, 0);
      line(x + w / 4, y + h / 4, x + 3 * w / 4, y + 3 * h / 4);
      line(x + 3 * w / 4, y + h / 4, x + w / 4, y + 3 * h / 4);
    }
    }
  }
}

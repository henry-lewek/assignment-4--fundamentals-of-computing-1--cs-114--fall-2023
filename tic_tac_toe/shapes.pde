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

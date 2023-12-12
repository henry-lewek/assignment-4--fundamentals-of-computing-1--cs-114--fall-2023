void setup() {
  size(500, 500);
  System.out.println("Welcome to Tic Tac Toe!");
  System.out.println("The computer plays first.");
  System.out.println("After it has played, press any key between 0-8 to make a move.");
  resetGame();
}

void draw() {
  background(255);
  drawBoard();
}

void keyPressed() {

  int index = key - '0';

  if (index >= 0 && index <= 8) {
    int row = index / 3;
    int col = index % 3;

    if (board[row][col] == 0 && userTurn) {
      board[row][col] = 1;  // User's move
      userTurn = false;
      checkWinner();
      if (!gameOver) {
        computerMove();
        checkWinner();
      }
    } else {
      System.out.println("Invalid move. Try again.");
    }
  } else {
    System.out.println("Invalid key. Press a number between 0-8.");
  }
}

void resetGame() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      board[i][j] = 0;
    }
  }

  userTurn = false;
  gameOver = false;
  computerMove();
}

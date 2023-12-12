void computerMove() {
  int emptyCount = 0;
  int[] emptyIndices = new int[9];

  // Find empty squares
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == 0) {
        emptyIndices[emptyCount] = i * 3 + j;
        emptyCount++;
      }
    }
  }

  // Choose a random empty square for the computer's move
  if (emptyCount > 0) {
    int randomIndex = int(random(emptyCount));
    int computerRow = emptyIndices[randomIndex] / 3;
    int computerCol = emptyIndices[randomIndex] % 3;
    board[computerRow][computerCol] = 2;  // Computer's move
    userTurn = true;
  }
}

void checkWinner() {
  // Check rows, columns, and diagonals for a winner
  for (int i = 0; i < 3; i++) {
    if (checkLine(board[i][0], board[i][1], board[i][2]) ||
        checkLine(board[0][i], board[1][i], board[2][i])) {
      gameOver = true;
      System.out.println("The " + (userTurn ? "computer" : "user") + " wins!");
      return;
    }
  }

  if (checkLine(board[0][0], board[1][1], board[2][2]) ||
      checkLine(board[0][2], board[1][1], board[2][0])) {
    gameOver = true;
    System.out.println("Player " + (userTurn ? "O" : "X") + " wins!");
    return;
  }

  // Check for a tie
  boolean isTie = true;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (board[i][j] == 0) {
        isTie = false;
        break;
      }
    }
  }

  if (isTie && !gameOver) {
    gameOver = true;
    System.out.println("It's a tie!");
  }
}

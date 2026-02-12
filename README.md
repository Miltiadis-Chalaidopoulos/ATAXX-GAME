---
# ATAXX
---

# DEMO PAGE

https://users.iee.ihu.gr/~iee2020187/ADISE24_ATAXX/


# GAME INTRODUCTION

Ataxx is a strategy board game played on a 7x7 grid. Each player starts
with two pieces, and the goal is to have more pieces on the board at the
end of the game.

**How to play:**

1.  **Movement:** Players take turns moving one of their pieces one or
    two spaces vertically, horizontally, or diagonally.

2.  **Placement:** When a piece is moved one space, a new piece of the
    same color is placed in the original square. When a piece is moved
    two spaces, only the new piece is placed, and the original piece is
    removed.

3.  **Capture:** Any enemy pieces adjacent to the newly placed piece are
    converted to the player\'s color.

**Winning:**

The game ends when the board is full or no legal moves remain. The
player with the most pieces on the board wins.

**Key Strategy:**

-   **Control the center:** The center of the board is crucial, as it
    allows for more movement options and potential captures.

-   **Plan ahead:** Think several moves in advance to anticipate your
    opponent\'s moves and plan your own accordingly.

-   **Be aggressive:** Don\'t be afraid to take risks and try to capture
    as many enemy pieces as possible.

Ataxx is a challenging and rewarding game that requires strategic
thinking and tactical skill. It\'s a great choice for players who enjoy
abstract strategy games.

# COURSE

This game developed for the Development of Web Systems and Applications
course

Supervising Professor :Antonios Sidiropoulos

# DATABASE

TABLES

-   Board

-   Board Empty

-   Players

-   Game Status

# API 

**API DESCRIPTION**

| **URI**               | **Method** | **Action**                                                                 |
|-----------------------|------------|---------------------------------------------------------------------------|
| `/board/`             | GET        | Returns the current state of the board.                                    |
| `/board/`             | POST       | Resets the board to its initial state. Returns the current board state.    |
| `/board/piece/{x}/{y}`| GET        | Returns the current state of the cell at `(x, y)`.                         |
| `/board/piece/{x}/{y}`| PUT        | Moves the piece at position `(x, y)` to a new position `(x1, y1)`.         |
| `/board/piece/{x}/{y}`| PUT        | Returns the new state of cells `(x, y)` and `(x1, y1)`.                    |
| `/players/{p}`        | GET        | Returns the name of the player `p` (where `p` is `B` or `W`).              |
| `/players/{p}`        | PUT        | Sets the name of player `p` to the provided `name`.                        |
| `/players/`           | GET        | Returns the details of all players.                                        |
| `/status/`            | GET        | Returns the game status.                                                   |
|`/count_pieces/`       | POST       | To update the scprenboard.                                                 |
| `/end_game/`          | POST       | Declares Winner and ends the game.                                         |
# Technologies Used

**Technologies Used**

-   HTML: Structure of the game.

-   CSS: Styling to create a basic interface.

-   JavaScript: Implementation of game logic.

-   PHP: Secure login section, board, movements, scoreboard.

-   SQL: Log in credentials and database for the state of the game and the board .

# TEAM

-   Antoniou Sophia 2020011

-   Miltiadis Chalaidopoulos 2020187

Both team members got involved at the backend and frontend development
of the game

# CONTACT

For bugs or suggestions please contact this email :
<miltos.hal@gmail.com>

Enjoy playing ATAXX

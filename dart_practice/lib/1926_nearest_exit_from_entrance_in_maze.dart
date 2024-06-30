import 'dart:collection';

/// [1926. Nearest Exit from Entrance in Maze](https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/description)
///
/// You are given an m x n matrix maze (0-indexed) with empty cells (represented
/// as '.') and walls (represented as '+'). You are also given the entrance of
/// the maze, where entrance = [entrancerow, entrancecol] denotes the row and
/// column of the cell you are initially standing at.
///
/// In one step, you can move one cell up, down, left, or right. You cannot step
/// into a cell with a wall, and you cannot step outside the maze. Your goal is
/// to find the nearest exit from the entrance. An exit is defined as an empty
/// cell that is at the border of the maze. The entrance does not count as an
/// exit.
///
/// Return the number of steps in the shortest path from the entrance to the
/// nearest exit, or -1 if no such path exists.
///
/// ### Example 1:
///
/// ![example-1](https://assets.leetcode.com/uploads/2021/06/04/nearest1-grid.jpg)
///
/// - Input: maze = [["+","+",".","+"],[".",".",".","+"],["+","+","+","."]],
/// entrance = [1,2]
/// - Output: 1
///
/// Explanation: There are 3 exits in this maze at [1,0], [0,2], and [2,3].
/// Initially, you are at the entrance cell [1,2].
/// - You can reach [1,0] by moving 2 steps left.
/// - You can reach [0,2] by moving 1 step up.
/// - It is impossible to reach [2,3] from the entrance.
/// - Thus, the nearest exit is [0,2], which is 1 step away.
///
class Solution1926 {
  int nearestExit(List<List<String>> maze, List<int> entrance) {
    final rowCount = maze.length;
    final columnCount = maze.first.length;
    final startingCoordinate = (x: entrance[0], y: entrance[1]);
    final List<Coordinate> directions = [
      (x: 0, y: 1),
      (x: 1, y: 0),
      (x: 0, y: -1),
      (x: -1, y: 0),
    ];

    Queue<(Coordinate, int)> queue = Queue();
    queue.add((startingCoordinate, 0));
    maze[startingCoordinate.x][startingCoordinate.y] = 'x';

    while (queue.isNotEmpty) {
      final current = queue.removeFirst();

      final currentCoordinate = current.$1;
      final step = current.$2;

      final x = currentCoordinate.x;
      final y = currentCoordinate.y;

      for (final direction in directions) {
        final newX = x + direction.x;
        final newY = y + direction.y;

        if (newX >= 0 &&
            newX < rowCount &&
            newY >= 0 &&
            newY < columnCount &&
            maze[newX][newY] == '.') {
          if (newX == 0 ||
              newX == rowCount - 1 ||
              newY == 0 ||
              newY == columnCount - 1) {
            return step + 1;
          }

          queue.add(((x: newX, y: newY), step + 1));
          maze[newX][newY] = 'x';
        }
      }
    }

    return -1;
  }
}

typedef Coordinate = ({int x, int y});

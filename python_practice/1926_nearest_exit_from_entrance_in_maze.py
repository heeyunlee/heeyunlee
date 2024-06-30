from collections import deque
from typing import List


class Solution:
    def nearestExit(self, maze: List[List[str]], entrance: List[int]) -> int:
        rowLength = len(maze)
        columnLength = len(maze[0])
        startingX = entrance[0]
        startingY = entrance[1]

        directions = [[0, 1], [1, 0], [0, -1], [-1, 0]]

        queue = deque([[startingX, startingY, 0]])
        maze[startingX][startingY] = 'x'

        while queue:
            current = queue.popleft()
            currentX = current[0]
            currentY = current[1]
            currentStep = current[2]

            for direction in directions:
                newX = currentX + direction[0]
                newY = currentY + direction[1]

                if newX >= 0 and newX < rowLength and newY >= 0 and newY < columnLength and maze[newX][newY] == '.':
                    if newX == 0 or newX == rowLength - 1 or newY == 0 or newY == columnLength - 1:
                        return currentStep + 1
                    
                    queue.append([newX, newY, currentStep + 1])
                    maze[newX][newY] = 'x'

        return -1
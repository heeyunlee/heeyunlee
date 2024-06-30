import UIKit

class Solution {
    func nearestExit(_ maze: [[Character]], _ entrance: [Int]) -> Int {
        var maze = maze
        let maxX = maze.count
        let maxY = maze[0].count
        let startingX = entrance[0]
        let startingY = entrance[1]
        let directions = [[0,1], [1,0], [0, -1], [-1,0]]
        
        var queue: [[Int]] = [[startingX, startingY, 0]]
        maze[startingX][startingY] = "x"
        
        while !queue.isEmpty {
            let current = queue.removeFirst()
            let currentX = current[0]
            let currentY = current[1]
            let currentStep = current[2]
            
            for direction in directions {
                let newX = currentX + direction[0]
                let newY = currentY + direction[1]
                
                if newX >= 0 && newX < maxX && newY >= 0 && newY < maxY && maze[newX][newY] == Character(".") {
                    if newX == 0 || newX == maxX - 1 || newY == 0 || newY == maxY - 1 {
                        return currentStep + 1
                    }
                    
                    queue.append([newX, newY, currentStep + 1])
                    maze[newX][newY] = "x"
                }
            }
        }
        
        return -1
    }
}

import UIKit

class Solution {
    func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
        var roomAndVisited: [Int: Bool] = [Int: Bool]()
        for (index, value) in rooms.enumerated() {
            roomAndVisited[index] = false
        }
        var queue: [Int] = [0]
        
        while !queue.isEmpty {
            let roomToVisit = queue.removeFirst()
            roomAndVisited[roomToVisit] = true
            let keysInRoom = rooms[roomToVisit]
            
            for key in keysInRoom {
                if !queue.contains(key) && roomAndVisited[key] == false {
                    queue.append(key)
                }
            }
        }
                
        return !roomAndVisited.values.contains(false)
    }
}

let solution = Solution()
let input = [[1,3],[3,0,1],[2],[0]]
let output = solution.canVisitAllRooms(input)
print(output)

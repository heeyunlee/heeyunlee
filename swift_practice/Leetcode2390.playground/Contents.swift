import UIKit

class Solution {
    func removeStars(_ s: String) -> String {
        var result: [Character] = []
        
        for (_, char) in s.enumerated() {
            if char == "*" {
                result.popLast()
            } else {
                result.append(char)
            }
        }
        
        return String(result)
    }
}

let solution = Solution()
let output = solution.removeStars("leet**cod*e")
print(output)

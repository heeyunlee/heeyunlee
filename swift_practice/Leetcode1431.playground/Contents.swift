import UIKit

class Solution {
  func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var solution: [Bool] = []
    
    for i in 0..<candies.count {
      let currentCandiesWithExtra = candies[i] + extraCandies
      let maxCandies = candies.max() ?? 0
      
      solution.append(currentCandiesWithExtra >= maxCandies)
    }
    
    return solution
  }
}

let solution = Solution()
let case1 = solution.kidsWithCandies([5,7,1,2,8,9], 5)
print(case1)

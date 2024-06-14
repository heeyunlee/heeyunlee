import UIKit

class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
      var updatedFlowerbed: [Int] = flowerbed
      var nPossiblePlots: Int = 0
      
      for i in 0..<updatedFlowerbed.count where updatedFlowerbed[i] != 1 {
        if updatedFlowerbed[i] == 0 && (i == 0 || updatedFlowerbed[i-1] == 0) && (i == updatedFlowerbed.count - 1 || updatedFlowerbed[i+1] == 0) {
          updatedFlowerbed[i] = 1
          nPossiblePlots += 1
        }
      }
      
      return nPossiblePlots >= n
    }
}

let solution = Solution()
let a = solution.canPlaceFlowers([1,0,0,0,1], 2)
print(a)

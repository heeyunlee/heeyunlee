import UIKit

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
      var leftSum = 0
      var sum = nums.reduce(0, +)
      
      for i in 0..<nums.count {
        if leftSum == sum - leftSum - nums[i] {
          return i
        }
        
        leftSum += nums[i]
      }
      
      return -1
    }
}

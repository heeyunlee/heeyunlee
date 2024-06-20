import UIKit

class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
      var maxSum = nums[0..<k].reduce(0, +)
      var currentSum = maxSum
      
      for i in k..<nums.count {
        currentSum = currentSum + nums[i] - nums[i - k]
        
        maxSum = max(maxSum, currentSum)
      }
      
      return Double(maxSum) / Double(k)
    }
}

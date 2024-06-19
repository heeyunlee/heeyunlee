import UIKit

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zerosCount = 0
        
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zerosCount += 1
            } else if (zerosCount != 0) {
                nums[i-zerosCount] = nums[i]
                nums[i] = 0
            }
        }
    }
}

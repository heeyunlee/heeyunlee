from typing import List


class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        leftSum = 0
        numsSum = sum(nums)

        for i in range(0,len(nums)):
            if leftSum == numsSum - leftSum - nums[i]:
                return i
            
            leftSum += nums[i]
        
        return -1
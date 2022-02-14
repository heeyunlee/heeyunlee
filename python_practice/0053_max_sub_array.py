from typing import List


''' 53. Maximum Subarray

    Given an integer array nums, find the contiguous subarray (containing 
    at least one number) which has the largest sum and return its sum.

    A subarray is a contiguous part of an array.

    Example 1:

    Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
    Output: 6
    Explanation: [4,-1,2,1] has the largest sum = 6.
'''


class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        max_sum = current_sum = nums[0]

        for x in nums[1:]:
            current_sum = max(x, current_sum + x)
            max_sum = max(max_sum, current_sum)

        return max_sum


s = Solution()
a = s.maxSubArray([1])
print(a)

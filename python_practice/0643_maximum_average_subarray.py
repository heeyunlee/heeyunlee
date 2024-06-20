from typing import List


class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        maxSum: int = sum(nums[0:k])
        currentSum: int = maxSum

        for i in range(k, len(nums)):
            currentSum += nums[i] - nums[i - k]
            maxSum = max(currentSum, maxSum)

        return maxSum / k
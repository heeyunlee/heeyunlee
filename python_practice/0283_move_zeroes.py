from typing import List

class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        nZeros = 0

        for i in range(len(nums)):
            if nums[i] == 0:
                nZeros += 1
            elif nZeros > 0:
                nums[i-nZeros], nums[i] = nums[i], 0
from typing import List

''' 283. Move Zeroes

    Given an integer array nums, move all 0's to the end of it while 
    maintaining the relative order of the non-zero elements.

    Note that you must do this in-place without making a copy of the array.

    Example 1:
    Input: nums = [0,1,0,3,12]
    Output: [1,3,12,0,0]

    Example 2:
    Input: nums = [0]
    Output: [0]
'''


class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        size_of_zeros = 0

        for i, num in enumerate(nums):
            if num == 0:
                size_of_zeros += 1

            elif size_of_zeros > 0:
                nums[i] = 0
                nums[i-size_of_zeros] = num

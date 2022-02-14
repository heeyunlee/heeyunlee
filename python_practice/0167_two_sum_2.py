from typing import List

''' 167. Two Sum II - Input Array Is Sorted

    Given a 1-indexed array of integers numbers that is already 
    sorted in non-decreasing order, find two numbers such that 
    they add up to a specific target number. Let these two numbers 
    be numbers[index1] and numbers[index2] where 1 <= index1 < index2 
    <= numbers.length.

    Return the indices of the two numbers, index1 and index2, added by 
    one as an integer array [index1, index2] of length 2.

    The tests are generated such that there is exactly one solution. 
    You may not use the same element twice.

    Your solution must use only constant extra space.
'''


class Solution:
    def twoSumTwo(self, nums: List[int], target: int) -> List[int]:
        l, r = 0, len(nums) - 1

        while l < r:
            s = nums[l] + nums[r]

            if s == target:
                return [l+1, r+1]
            elif s < target:
                l += 1
            else:
                r -= 1


s = Solution()
a = [2, 7, 11, 15, 20]
s.twoSumTwo(a, 9)

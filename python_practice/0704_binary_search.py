from typing import List

''' 704. Binary Search

    Given an array of integers nums which is sorted in ascending order,
    and an integer target, write a function to search target in nums. If 
    target exists, then return its index. Otherwise, return -1.

    You must write an algorithm with O(log n) runtime complexity.

    Example 1:

    Input: nums = [-1,0,3,5,9,12], target = 9
    Output: 4
    Explanation: 9 exists in nums and its index is 4
'''


class Solution:
    def search(self, nums: List[int], target: int) -> int:
        left, right = 0, len(nums) - 1

        while left <= right:
            pivot = (left + right) // 2
            print(pivot)

            if nums[pivot] == target:
                return pivot

            if nums[pivot] > target:
                right = pivot - 1
            else:
                left = pivot + 1

        return -1

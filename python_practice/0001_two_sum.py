from typing import List, Dict

''' 1. Two Sum

    Given an array of integers nums and an integer target, return 
    indices of the two numbers such that they add up to target.

    You may assume that each input would have exactly one solution, 
    and you may not use the same element twice.

    You can return the answer in any order.

    Example 1:
    Input: nums = [2,7,11,15], target = 9
    Output: [0,1]
    Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
'''


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        nums_index_map: Dict[int, int] = {}

        for index, item in enumerate(nums):
            leftover = target - item

            if leftover in nums_index_map:
                return [index, nums_index_map[leftover]]

            nums_index_map[item] = index
            


solution = Solution()
solution.twoSum([2, 7, 11, 15], 9)

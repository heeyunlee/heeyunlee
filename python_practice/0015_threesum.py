from typing import List

''' 15. 3Sum

    Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] 
    such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

    Notice that the solution set must not contain duplicate triplets.

    Example 1:
    Input: nums = [-1,0,1,2,-1,-4]
    Output: [[-1,-1,2],[-1,0,1]]
'''


class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        if len(nums) < 3:
            return []

        nums.sort()
        result = []

        for i, item in enumerate(nums[:-2]):
            if i > 0 and nums[i-1] == nums[i]:
                continue

            l, r = i+1, len(nums) - 1

            while l < r:
                threesum = nums[l] + nums[r] + item

                if threesum == 0:
                    result.append([nums[l], nums[r], item])

                    l += 1
                    r -= 1

                    while l < r and nums[l] == nums[l-1]:
                        l += 1

                elif threesum > 0:
                    r -= 1
                else:
                    l += 1

        return result


s = Solution()
a = [-1, 0, 1, 2, -1, -4]
s.threeSum(a)

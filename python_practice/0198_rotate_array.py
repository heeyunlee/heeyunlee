from typing import List

'''
Input: nums = [1,2,3,4,5,6,7], k = 3
Output: [5,6,7,1,2,3,4]
Explanation:
rotate 1 steps to the right: [7,1,2,3,4,5,6]
rotate 2 steps to the right: [6,7,1,2,3,4,5]
rotate 3 steps to the right: [5,6,7,1,2,3,4]
'''


class Solution:
    def rotateArray(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        n = len(nums)
        a = [0] * n

        for i in range(n):
            a[(i + k) % n] = nums[i]

        # nums[:] = a
        nums = a
        print(nums)


s = Solution()
a = [1, 2, 3, 4, 5, 6, 7]
s.rotateArray(a, 3)
print(f'new list {a}')

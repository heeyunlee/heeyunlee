from typing import List

''' 42. Trapping Rain Water

    Given n non-negative integers representing an elevation map where the 
    width of each bar is 1, compute how much water it can trap after raining.

    Example 1
    Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
    Output: 6
    Explanation: The above elevation map (black section) is represented by array 
    [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) 
    are being trapped.
'''


# Dynamic Programming
class Solution:
    def trap(self, height: List[int]) -> int:
        length = len(height)

        if length < 3:
            return 0

        left_max, right_max = [0] * length, [0] * length
        ans = 0

        left_max[0] = height[0]

        for i in range(1, length):
            left_max[i] = max(left_max[i-1], height[i])

        right_max[-1] = height[-1]

        for i in range(length-2, -1, -1):
            right_max[i] = max(right_max[i+1], height[i])

        for i in range(length):
            ans += min(left_max[i], right_max[i]) - height[i]

        return ans

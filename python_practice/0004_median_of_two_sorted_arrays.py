from typing import List

''' 4. Median of Two Sorted Arrays

    Given two sorted arrays nums1 and nums2 of size m and n respectively, 
    return the median of the two sorted arrays.

    The overall run time complexity should be O(log (m+n)).

    Example 1:
    Input: nums1 = [1,3], nums2 = [2]
    Output: 2.00000
    Explanation: merged array = [1,2,3] and median is 2.
'''

# Binary Search


class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        if len(nums1) > len(nums2):
            nums1, nums2 = nums2, nums1

        nums1_len, nums2_len = len(nums1), len(nums2)
        l_pointer, r_pointer = 0, nums1_len

        while l_pointer <= r_pointer:
            print(f'total is {nums1_len + nums2_len}')
            arr1_left_len = (l_pointer + r_pointer) // 2
            arr2_left_len = (nums1_len + nums2_len + 1) // 2 - arr1_left_len

            print(
                f'partitions: arr1 = ({arr1_left_len}), arr2 = ({arr2_left_len})')

            arr1_left_max = nums1[arr1_left_len -
                                  1] if arr1_left_len > 0 else float('-inf')
            arr1_right_min = nums1[arr1_left_len] if arr1_left_len < nums1_len else float(
                'inf')
            print(arr1_left_max, arr1_right_min)

            arr2_left_max = nums2[arr2_left_len -
                                  1] if arr2_left_len > 0 else float('-inf')
            arr2_right_min = nums2[arr2_left_len] if arr2_left_len < nums2_len else float(
                'inf')
            print(arr2_left_max, arr2_right_min)

            if arr1_left_max <= arr2_right_min and arr2_left_max <= arr1_right_min:
                isOdd = (nums1_len + nums2_len) % 2
                print(isOdd)

                if isOdd:
                    print('isOdd')
                    return max(arr1_left_max, arr2_left_max)
                else:
                    print('isEven')
                    return (max(arr1_left_max, arr2_left_max) + min(arr1_right_min, arr2_right_min)) / 2
            elif arr1_left_max > arr2_right_min:
                r_pointer = arr1_left_len - 1
                print('arr1_left_max bigger than arr2_right_min')
            else:
                print('arr2_left_max bigger than arr1_right_min')
                l_pointer = arr1_left_len + 1


nums1 = [1, 2, 3, 4]
nums2 = [1, 2, 3]

s = Solution()
b = s.findMedianSortedArrays(nums1, nums2)
b

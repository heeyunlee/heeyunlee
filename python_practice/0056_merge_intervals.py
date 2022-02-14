from typing import List

''' 56. Merge Intervals

    Given an array of intervals where intervals[i] = [starti, endi], 
    merge all overlapping intervals, and return an array of the 
    non-overlapping intervals that cover all the intervals in the input.

    Example 1:
    Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
    Output: [[1,6],[8,10],[15,18]]
    Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
'''


class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        sorted_intervals = sorted(intervals)
        new_intervals: List[List[int]] = []

        for item in sorted_intervals:
            if len(new_intervals) == 0 or new_intervals[-1][1] < item[0]:
                new_intervals.append(item)
            else:
                new_intervals[-1][1] = max(new_intervals[-1][1], item[1])

        return new_intervals

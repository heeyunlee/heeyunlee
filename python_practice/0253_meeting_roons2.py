from typing import List

''' 253. Meeting Rooms II

    Given an array of meeting time intervals intervals where intervals[i] = [starti, endi], 
    return the minimum number of conference rooms required.

    Example 1:
    Input: intervals = [[0,30],[5,10],[15,20]]
    Output: 2

    Example 2:
    Input: intervals = [[7,10],[2,4]]
    Output: 1
'''


class Solution:
    def minMeetingRooms(self, intervals: List[List[int]]) -> int:
        intervals_sorted = sorted(intervals)
        rooms_with_ending_time = [intervals_sorted[0][1]]

        for interval in intervals_sorted[1:]:
            earliest_ending = min(rooms_with_ending_time)

            if earliest_ending <= interval[0]:
                rooms_with_ending_time.remove(earliest_ending)

            rooms_with_ending_time.append(interval[1])

        return len(rooms_with_ending_time)


s = Solution()
a = [[0, 30], [5, 10], [15, 20]]
s.minMeetingRooms(a)

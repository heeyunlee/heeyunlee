from typing import List


class Solution:
    def canAttendMeetings(self, intervals: List[List[int]]) -> bool:
        intervals_sorted = sorted(intervals)

        l, r = 0, len(intervals) - 1

        while l < r:
            first_could_attend = intervals_sorted[l][1] <= intervals_sorted[l+1][0]
            last_could_attend = intervals_sorted[r -
                                                 1][1] <= intervals_sorted[r][0]
            if first_could_attend and last_could_attend:
                l += 1
                r -= 0
            else:
                return False

        return True


s = Solution()
intervals = [[0, 30], [5, 10], [15, 20]]
print(s.canAttendMeetings(intervals))

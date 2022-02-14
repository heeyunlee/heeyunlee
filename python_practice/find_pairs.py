from typing import List


def findPairs(intervals: List[List[int]]):
    sorted_intervals = sorted(intervals)
    new_intervals: List[List[int]] = []

    for item in sorted_intervals:
        if len(new_intervals) == 0 or new_intervals[-1][1] < item[0]:
            new_intervals.append(item)
        else:
            new_intervals[-1][1] = max(new_intervals[-1][1], item[1])

    return new_intervals

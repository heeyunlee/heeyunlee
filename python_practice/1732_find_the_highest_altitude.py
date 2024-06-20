from typing import List


class Solution:
    def largestAltitude(self, gain: List[int]) -> int:
        maxAltitude = 0
        currentAltitude = maxAltitude

        for i in range(0, len(gain)):
            currentAltitude += gain[i]
            maxAltitude = max(currentAltitude, maxAltitude)

        return maxAltitude
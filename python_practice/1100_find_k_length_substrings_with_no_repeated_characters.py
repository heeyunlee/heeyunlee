''' 1100. Find K-Length Substrings With No Repeated Characters

    Given a string s and an integer k, return the number of substrings in s of 
    length k with no repeated characters.

    Example 1:
    Input: s = "havefunonleetcode", k = 5
    Output: 6
    Explanation: There are 6 substrings they are: 'havef','avefu','vefun','efuno','etcod',
    'tcode'.
'''


class Solution:
    def numKLenSubstrNoRepeats(self, s: str, k: int) -> int:
        count = 0

        if len(s) < k:
            return count

        for i in range(len(s)-k+1):
            substring = s[i:i+k]

            if len(set(substring)) == len(substring):
                count += 1

        return count


s = Solution()
a = "havefunonleetcode"
b = 5
s.numKLenSubstrNoRepeats(a, b)

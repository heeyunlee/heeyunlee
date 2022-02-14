from typing import Dict

''' 3. Longest Substring Without Repeating Characters

    Given a string s, find the length of the longest substring 
    without repeating characters.

    Example 1:
    Input: s = "abcabcbb"
    Output: 3
    Explanation: The answer is "abc", with the length of 3.
'''


class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        start = max_length = 0
        used_char: Dict[str, int] = {}

        for i, char in enumerate(s):
            if char in used_char and start <= used_char[char]:
                start = used_char[char] + 1
            else:
                max_length = max(max_length, i - start + 1)

            used_char[char] = i

        return max_length


s = Solution()
a = 'abcabcbb'
s.lengthOfLongestSubstring(a)

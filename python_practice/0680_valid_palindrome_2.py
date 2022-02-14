''' 680. Valid Palindrome II

    Given a string s, return true if the s can be palindrome after deleting at most 
    one character from it.

    Example 1:
    Input: s = "aba"
    Output: true

    Example 2:
    Input: s = "abca"
    Output: true
    Explanation: You could delete the character 'c'.
'''


class Solution:
    def validPalindrome2(self, s: str) -> bool:
        l, r = 0, len(s) - 1

        while l <= r:
            if s[l] == s[r]:
                l += 1
                r -= 1
            else:
                return self._isValidPalindrome(s, l + 1, r) or self._isValidPalindrome(s, l, r - 1)

        return True

    def _isValidPalindrome(self, s: str, l: int, r: int):
        while l <= r:
            if s[l] == s[r]:
                l += 1
                r -= 1
            else:
                return False

        return True


a = Solution()
x = 'a123'
a.validPalindrome2(x)

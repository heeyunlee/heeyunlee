class Solution:
    def longestPalindrome(self, s: str) -> str:
        result = ''

        for i in range(len(s)):
            odd = self._get_longest_palindrome(s, i, i)
            even = self._get_longest_palindrome(s, i, i+1)
            palindrome = max(even, odd, key=len)

            if len(palindrome) > len(result):
                result = palindrome

        return result

    def _get_longest_palindrome(self, s: str, l: int, r: int):
        result = ''
        result_len = 0

        while l >= 0 and r < len(s) and s[l] == s[r]:
            palindrome_len = r - l + 1

            if palindrome_len > result_len:
                result = s[l:r+1]
                result_len = palindrome_len

            l -= 1
            r += 1

        return result


s = Solution()
a = "babad"
s.longestPalindrome(a)

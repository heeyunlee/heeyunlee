''' 367. Valid Perfect Square

    Given a positive integer num, write a function which returns 
    True if num is a perfect square else False.

    Follow up: Do not use any built-in library function such as 
    sqrt.

    Example 1:

    Input: num = 16
    Output: true
'''


class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        l, r = 0, num

        while l <= r:
            middle = (l + r) // 2

            if middle ** 2 == num:
                return True
            elif middle ** 2 < num:
                l = middle + 1
            else:
                r = middle - 1

        return False


s = Solution()
s.isPerfectSquare(10000)

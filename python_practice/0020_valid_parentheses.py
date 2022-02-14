''' 20. Valid Parentheses

    Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
    determine if the input string is valid.

    An input string is valid if:

    Open brackets must be closed by the same type of brackets.
    Open brackets must be closed in the correct order.


    Example 1:
    Input: s = "()"
    Output: true
'''


class Solution:
    def isValid(self, s: str) -> bool:
        open = ['(', '{', '[']
        close = [')', '}', ']']
        match = {')': '(', '}': '{', ']': '['}
        stack = []

        for char in s:
            if char in open:
                stack.append(char)
            elif char in close:
                if stack:
                    if stack[-1] == match.get(char):
                        stack.pop()
                    else:
                        return False
                elif not stack:
                    return False

        if stack:
            return False
        else:
            return True


s = Solution()
a = "()[]{}"
s.isValid(a)

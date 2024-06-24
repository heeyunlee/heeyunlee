class Solution:
    def removeStars(self, s: str) -> str:
        result = []

        for i in range(0,len(s)):
            char = s[i]

            if char == '*':
                result.pop()
            else:
                result.append(char)
        
        return ''.join(result)
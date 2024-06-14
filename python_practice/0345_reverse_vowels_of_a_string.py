class Solution:
    def reverseVowels(self, s: str) -> str:
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
        left = 0
        right = len(s) - 1
        sList = [*s]

        while left < right:
            while left < right and sList[left] not in vowels:
                left += 1
            
            while left < right and sList[right] not in vowels:
                right -= 1
            
            temp = sList[left]
            sList[left] = sList[right]
            sList[right] = temp
            left += 1
            right -= 1
        
        return ''.join(sList)
        
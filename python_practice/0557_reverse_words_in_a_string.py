''' 557. Reverse Words in a String III

    Given a string s, reverse the order of characters in each word within 
    a sentence while still preserving whitespace and initial word order.

    Example 1:

    Input: s = "Let's take LeetCode contest"
    Output: "s'teL ekat edoCteeL tsetnoc"
'''


class Solution:
    def reverseWords(self, s: str) -> str:
        words = self.split(s)
        new_words = []

        for word in words:
            word_list = list(word)
            l, r = 0, len(word_list) - 1

            while l < r:
                word_list[l], word_list[r] = word_list[r], word_list[l]
                l += 1
                r -= 1

            new_words.append(''.join(word_list))

        return ' '.join(new_words)

    def split(self, s: str):
        word = ''
        words = []

        for char in s:
            if char.isspace():
                if word:
                    words.append(word)
                word = ''
            else:
                word += char

        words.append(word)

        return words


s = Solution()
a = "Let's take LeetCode contest"
s.reverseWords(a)

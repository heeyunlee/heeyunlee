import UIKit

class Solution {
    func mergeAlternately(a word1: String, b word2: String) -> String {
      var solution = ""
      var index = 0
      
      while index < max(word1.count, word2.count) {
        if index < word1.count {
          let charIndex = word1.index(word1.startIndex, offsetBy: index)
          let char = word1[charIndex]
          solution += String(char)
        }
        
        if index < word2.count {
          let charIndex = word2.index(word2.startIndex, offsetBy: index)
          let char = word2[charIndex]
          solution += String(char)
        }
        
        index += 1
      }
      
      return solution
    }
}

let a = Solution()
let b = a.mergeAlternately(a: "ab", b: "def")
print(b)

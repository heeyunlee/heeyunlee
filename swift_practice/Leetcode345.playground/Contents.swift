import UIKit

class Solution {
    func reverseVowels(_ s: String) -> String {
      let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
      var left = 0
      var right = s.count - 1
      var sList = s.split(separator: "")
      
      while left < right {
        while left < right && !vowels.contains(String(sList[left])) {
          left += 1
        }
        
        while left < right && !vowels.contains(String(sList[right])) {
          right -= 1
        }
        
        let temp = sList[left]
        sList[left] = sList[right]
        sList[right] = temp
        left += 1
        right -= 1
      }
      
      return sList.joined()
    }
}

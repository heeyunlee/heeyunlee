import UIKit

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {return true}
        
        if s.count > t.count {return false}
        
        var sIndex = 0
        var tIndex = 0
        
        while sIndex < s.count && tIndex < t.count {
            let sCharIndex = s.index(s.startIndex, offsetBy: sIndex)
            let tCharIndex = t.index(t.startIndex, offsetBy: tIndex)
                        
            if s[sCharIndex] == t[tCharIndex] {
                sIndex += 1
            }
            
            tIndex += 1
        }
        
        return sIndex == s.count
    }
}

let solution = Solution()
let result = solution.isSubsequence("abc", "acbecadw")
print(result)

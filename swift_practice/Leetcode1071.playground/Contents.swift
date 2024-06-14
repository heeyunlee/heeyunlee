import UIKit

class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }

        let gcd = getGcd(str1.count, str2.count)

        return String(str1.prefix(gcd))
    }

    func getGcd(_ a: Int, _ b: Int) -> Int {
        return b == 0 ? a : getGcd(b, a % b)
    }
}

let solution = Solution()

let case1 = solution.gcdOfStrings("ABC", "ABCABC")
print(case1)

let case2 = solution.gcdOfStrings("ABABAB", "AB")
print(case2)

let case3 = solution.gcdOfStrings("LEET", "CODE")
print(case3)



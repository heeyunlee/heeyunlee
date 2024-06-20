import UIKit

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
      var maxAltitude: Int = 0
      var currentAltitude: Int = maxAltitude
      
      for i in 0..<gain.count {
        currentAltitude = currentAltitude + gain[i]
        maxAltitude = max(currentAltitude, maxAltitude)
      }
      
      return maxAltitude
    }
}

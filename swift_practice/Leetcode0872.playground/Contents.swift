import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var leftLeaves: [Int] = []
        var rightLeaves: [Int] = []
        
        dfs(&leftLeaves, root1)
        dfs(&rightLeaves, root2)
        
        if leftLeaves.isEmpty {
            return rightLeaves.isEmpty
        }
        
        if leftLeaves.count != rightLeaves.count {
            return false
        }
        
        for i in 0..<leftLeaves.count {
            if leftLeaves[i] != rightLeaves[i] {
                return false
            }
        }
        
        return true
    }
    
    private func dfs(_ leaves: inout [Int], _ node: TreeNode?) -> Void {
        if node != nil {
            if node?.left == nil && node?.right == nil {
                leaves.append(node!.val)
            }
            
            dfs(&leaves, node?.left)
            dfs(&leaves, node?.right)
        }
    }
}

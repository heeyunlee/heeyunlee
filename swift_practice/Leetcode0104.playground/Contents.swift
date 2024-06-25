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
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        
        let left = maxDepth(root?.left)
        let right = maxDepth(root?.right)
        
        return 1 + max(left, right)
    }
}

let solution = Solution()
let input = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)))
let output = solution.maxDepth(input)
print(output)

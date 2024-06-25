import 'dart:math' as math;

/// [104. Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/description)
///
/// Given the root of a binary tree, return its maximum depth.
///
/// A binary tree's maximum depth is the number of nodes along the longest path
/// from the root node down to the farthest leaf node.
///
/// ![Image](https://assets.leetcode.com/uploads/2020/11/26/tmp-tree.jpg)
///
/// - Input: root = [3,9,20,null,null,15,7]
/// - Output: 3
class Solution104 {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;

    final left = maxDepth(root.left);
    final right = maxDepth(root.right);

    return 1 + (math.max(left, right));
  }
}

class TreeNode {
  TreeNode([
    this.val = 0,
    this.left,
    this.right,
  ]);

  int val;
  TreeNode? left;
  TreeNode? right;
}

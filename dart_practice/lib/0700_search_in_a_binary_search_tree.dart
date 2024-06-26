import 'classes/tree_node.dart';

/// [700. Search in a Binary Search Tree](https://leetcode.com/problems/search-in-a-binary-search-tree/description)
///
/// You are given the root of a binary search tree (BST) and an integer val.
///
/// Find the node in the BST that the node's value equals val and return the
/// subtree rooted with that node. If such a node does not exist, return null.
///
/// ### Example 1:
///
/// ![image-1](https://assets.leetcode.com/uploads/2021/01/12/tree1.jpg)
///
/// - Input: root = [4,2,7,1,3], val = 2
/// - Output: [2,1,3]
class Solution700 {
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root == null || root.val == val) {
      return root;
    } else if (root.val < val) {
      return searchBST(root.right, val);
    } else {
      return searchBST(root.left, val);
    }
  }
}

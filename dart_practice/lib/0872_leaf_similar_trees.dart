import 'classes/tree_node.dart';

/// [872. Leaf-Similar Trees](https://leetcode.com/problems/leaf-similar-trees/description)
///
/// Consider all the leaves of a binary tree, from left to right order, the
/// values of those leaves form a leaf value sequence.
///
/// For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9,
/// 8).
///
/// Two binary trees are considered leaf-similar if their leaf value sequence is
/// the same.
///
/// Return `true` if and only if the two given trees with head nodes root1 and
/// root2 are leaf-similar.
///
/// ### Example 1:
///
/// ![image](https://assets.leetcode.com/uploads/2020/09/03/leaf-similar-1.jpg)
///
/// - Input: root1 = [3,5,1,6,2,9,8,null,null,7,4], root2 = [3,5,1,6,7,4,2,null,
/// null,null,null,null,null,9,8]
/// - Output: `true`
///
class Solution872 {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    List<int> root1Leaves = [];
    List<int> root2Leaves = [];

    dfs(root1Leaves, root1);
    dfs(root2Leaves, root2);

    if (root1Leaves.isEmpty) {
      return root2Leaves.isEmpty;
    }

    if (root1Leaves.length != root2Leaves.length) {
      return false;
    }

    if (identical(root1Leaves, root2Leaves)) {
      return true;
    }

    for (int i = 0; i < root1Leaves.length; i++) {
      if (root1Leaves[i] != root2Leaves[i]) {
        return false;
      }
    }

    return true;
  }

  void dfs(List<int> currentLeaves, TreeNode? node) {
    if (node != null) {
      if (node.left == null && node.right == null) {
        currentLeaves.add(node.val);
      }

      dfs(currentLeaves, node.left);
      dfs(currentLeaves, node.right);
    }
  }
}

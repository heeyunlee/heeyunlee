import 'dart:collection';

import 'classes/tree_node.dart';

/// [199. Binary Tree Right Side View](https://leetcode.com/problems/binary-tree-right-side-view/description)
///
/// Given the root of a binary tree, imagine yourself standing on the right side
/// of it, return the values of the nodes you can see ordered from top to bottom.
///
/// ### Example 1:
/// ![Example 1](https://assets.leetcode.com/uploads/2021/02/14/tree.jpg)
///
/// - Input: root = [1,2,3,null,5,null,4]
/// - Output: [1,3,4]
///
class Solution199 {
  List<int> rightSideView(TreeNode? root) {
    if (root == null) return [];

    List<int> result = <int>[];

    Queue<TreeNode> queue = Queue<TreeNode>();
    queue.add(root);

    while (queue.isNotEmpty) {
      final levelSize = queue.length;

      for (int i = 0; i < levelSize; i++) {
        final node = queue.removeFirst();

        if (i == levelSize - 1) {
          result.add(node.val);
        }

        if (node.left != null) {
          queue.add(node.left!);
        }

        if (node.right != null) {
          queue.add(node.right!);
        }
      }
    }

    return result;
  }
}

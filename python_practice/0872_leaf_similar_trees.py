from typing import List, Optional


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
        
class Solution:
    def leafSimilar(self, root1: Optional[TreeNode], root2: Optional[TreeNode]) -> bool:
        def dfs(currentLeaves: List[int], node: Optional[TreeNode]):
            if node is not None:
                if node.left is None and node.right is None:
                    currentLeaves.append(node.val)
                
                dfs(currentLeaves, node.left)
                dfs(currentLeaves, node.right)

        root1Leaves: List[int] = []
        root2Leaves: List[int] = []

        dfs(currentLeaves=root1Leaves,node=root1)
        dfs(currentLeaves=root2Leaves,node=root2)

        return root1Leaves == root2Leaves
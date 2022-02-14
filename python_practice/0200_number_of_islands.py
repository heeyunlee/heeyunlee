from typing import List


''' 200. Number of Islands

    Given an m x n 2D binary grid grid which represents a map of '1's (land) 
    and '0's (water), return the number of islands.

    An island is surrounded by water and is formed by connecting adjacent 
    lands horizontally or vertically. You may assume all four edges of the 
    grid are all surrounded by water.

    Example 1:
    Input: grid = [
        ["1","1","1","1","0"],
        ["1","1","0","1","0"],
        ["1","1","0","0","0"],
        ["0","0","0","0","0"]
    ]
    Output: 1       
'''

# Using DFS


class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        numOfIslands = 0
        r = len(grid)
        c = len(grid[0])

        for i in range(r):
            for j in range(c):
                if grid[i][j] == '1':
                    self.dfs(grid, i, j)
                    numOfIslands += 1

        print(grid)

        return numOfIslands

    def dfs(self, grid, i, j):
        if i < 0 or j < 0 or i >= len(grid) or j >= len(grid[0]) or grid[i][j] != '1':
            return

        print(f'i is {i}, j is {j}')

        grid[i][j] = '0'

        self.dfs(grid, i+1, j)
        self.dfs(grid, i-1, j)
        self.dfs(grid, i, j+1)
        self.dfs(grid, i, j-1)


grid = [
    ["1", "1", "0", "1", "0"],
    ["1", "1", "0", "1", "0"],
    ["1", "1", "0", "0", "0"],
    ["0", "0", "0", "0", "1"]
]

a = Solution()
b = a.numIslands(grid)
print(b)

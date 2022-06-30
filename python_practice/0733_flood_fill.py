from typing import List

''' 733. Flood Fill

    An image is represented by an m x n integer grid image where image[i][j] represents the pixel 
    value of the image.

    You are also given three integers sr, sc, and newColor. You should perform a flood fill on 
    the image starting from the pixel image[sr][sc].

    To perform a flood fill, consider the starting pixel, plus any pixels connected 4-directionally 
    to the starting pixel of the same color as the starting pixel, plus any pixels connected 
    4-directionally to those pixels (also with the same color), and so on. Replace the color of 
    all of the aforementioned pixels with newColor.

    Return the modified image after performing the flood fill.

    Example 1:
    Input: image = [[1,1,1],[1,1,0],[1,0,1]], sr = 1, sc = 1, newColor = 2
    Output: [[2,2,2],[2,2,0],[2,0,1]]
    Explanation: From the center of the image with position (sr, sc) = (1, 1) (i.e., the red pixel), 
    all pixels connected by a path of the same color as the starting pixel (i.e., the blue pixels) 
    are colored with the new color.

    Note the bottom corner is not colored 2, because it is not 4-directionally connected to the 
    starting pixel.

    [Example Image](https://assets.leetcode.com/uploads/2021/06/01/flood1-grid.jpg)
'''


class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, newColor: int) -> List[List[int]]:
        color = image[sr][sc]

        if color == newColor:
            return image

        self._dfs(image, color, sr, sc, newColor)

        return image

    def _dfs(self, image: List[List[int]], color: int, r: int, c: int, newColor: int):
        if r < 0 or c < 0 or r >= len(image) or c >= len(image[0]):
            return

        if color == image[r][c]:
            image[r][c] = newColor

            self._dfs(image, color, r+1, c, newColor)
            self._dfs(image, color, r-1, c, newColor)
            self._dfs(image, color, r, c+1, newColor)
            self._dfs(image, color, r, c-1, newColor)


s = Solution()
image = [[1, 1, 0], [0, 1, 0], [1, 1, 1]]
sr = 1
sc = 1
newColor = 2
print(s.floodFill(image, sr, sc, newColor))

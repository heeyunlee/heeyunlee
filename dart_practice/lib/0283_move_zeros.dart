/// [283. Move Zeroes](https://leetcode.com/problems/move-zeroes/description)
///
/// Given an integer array nums, move all 0's to the end of it while maintaining
/// the relative order of the non-zero elements.
///
/// Note that you must do this in-place without making a copy of the array.
///
/// Example 1:
/// - Input: nums = [0,1,0,3,12]
/// - Output: [1,3,12,0,0]
///
class Solution283 {
  void moveZeros(List<int> nums) {
    int sizeOfZeros = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 0) {
        sizeOfZeros++;
      } else if (sizeOfZeros > 0) {
        int temp = nums[i];
        nums[i] = 0;
        nums[i - sizeOfZeros] = temp;
      }
    }
  }
}

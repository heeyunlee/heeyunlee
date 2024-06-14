/// ## [1. Two Sum](https://leetcode.com/problems/two-sum/description/)
///
/// Given an array of integers nums and an integer target, return indices of
/// the two numbers such that they add up to target.
///
/// You may assume that each input would have exactly one solution, and you may
/// not use the same element twice.
///
/// You can return the answer in any order.
///
/// ### Example 1:
///
/// Input: nums = [2,7,11,15], target = 9
///
/// Output: [0,1]
///
/// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numsAndIndex = {};

  final numsAsMap = nums.asMap();

  for (final entry in numsAsMap.entries) {
    final index = entry.key;
    final number = entry.value;

    final leftOver = target - number;

    if (numsAndIndex.containsKey(leftOver)) {
      return [numsAndIndex[leftOver]!, index];
    }
    numsAndIndex[number] = index;
  }

  return [];
}

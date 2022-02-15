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

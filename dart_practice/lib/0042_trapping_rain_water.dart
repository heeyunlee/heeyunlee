import 'dart:math' show max, min;

int trappingRainWater(List<int> height) {
  final length = height.length;

  if (length < 3) {
    return 0;
  }

  final left_max = List.generate(length, (index) => 0);
  List<int> right_max = List.generate(length, (index) => 0);
  int ans = 0;

  left_max[0] = height[0];

  for (int i = 1; i < length; i++) {
    left_max[i] = max(left_max[i - 1], height[i]);
  }

  right_max.last = height.last;

  for (int i = length - 2; i > -1; i--) {
    right_max[i] = max(right_max[i + 1], height[i]);
  }

  for (int i = 0; i < length; i++) {
    ans += min(left_max[i], right_max[i]) - height[i];
  }

  return ans;
}

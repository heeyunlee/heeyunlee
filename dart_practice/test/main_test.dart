import 'package:dart_leetcode/0724_find_pivot_index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Question 724', () {
    test('should solve case 1', () {
      final solution = Solution724();
      final input = [1, 7, 3, 6, 5, 6];
      final expectedOutput = 3;

      expect(solution.pivotIndex(input), expectedOutput);
    });

    test('should solve case 2', () {
      final solution = Solution724();
      final input = [-1, -1, 0, 1, 1, 0];
      final expectedOutput = 5;

      expect(solution.pivotIndex(input), expectedOutput);
    });
  });
}

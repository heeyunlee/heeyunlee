import 'package:dart_leetcode/0206_reversed_linked_list.dart';
import 'package:dart_leetcode/0724_find_pivot_index.dart';
import 'package:dart_leetcode/2390_removing_stars_from_a_string.dart';
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

  group('Question 2390', () {
    test(
      'should solve for case 1 using removeStarsUsingRegExp() method',
      () {
        final solution = Solution2390();
        final input = 'leet**cod*e';
        final expectedOutput = 'lecoe';

        expect(solution.removeStarsUsingRegExp(input), expectedOutput);
      },
    );

    test(
      'should solve for case 1 using removeStars() method',
      () {
        final solution = Solution2390();
        final input = 'leet**cod*e';
        final expectedOutput = 'lecoe';

        expect(solution.removeStars(input), expectedOutput);
      },
    );

    test(
      'should solve for case 2 using removeStarsUsingRegExp() method',
      () {
        final solution = Solution2390();
        final input = 'erase*****';
        final expectedOutput = '';

        expect(solution.removeStarsUsingRegExp(input), expectedOutput);
      },
    );

    test(
      'should solve for case 2 using removeStars() method',
      () {
        final solution = Solution2390();
        final input = 'erase*****';
        final expectedOutput = '';

        expect(solution.removeStars(input), expectedOutput);
      },
    );
  });

  group('Question 206', () {
    test(
      'should solve for case 1',
      () {
        final solution = Solution206();
        final input =
            ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));
        final expectedOutput =
            ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))));

        expect(solution.reverseList(input), expectedOutput);
      },
    );

    test(
      'should solve for case 2',
      () {
        final solution = Solution206();
        final input = ListNode(1, ListNode(2));
        final expectedOutput = ListNode(2, ListNode(1));

        expect(solution.reverseList(input), expectedOutput);
      },
    );
  });
}

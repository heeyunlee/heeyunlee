import 'package:dart_leetcode/0104_maximum_depth_of_binary_tree.dart';
import 'package:dart_leetcode/0199_binary_tree_right_side_view.dart';
import 'package:dart_leetcode/0206_reversed_linked_list.dart';
import 'package:dart_leetcode/0700_search_in_a_binary_search_tree.dart';
import 'package:dart_leetcode/0724_find_pivot_index.dart';
import 'package:dart_leetcode/0841_keys_and_rooms.dart';
import 'package:dart_leetcode/0872_leaf_similar_trees.dart';
import 'package:dart_leetcode/2390_removing_stars_from_a_string.dart';
import 'package:dart_leetcode/classes/tree_node.dart';
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

  group('Question 104', () {
    test('should solve for case 1', () {
      final solution = Solution104();
      final input =
          TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(15), TreeNode(7)));
      const expectedOutput = 3;

      expect(solution.maxDepth(input), expectedOutput);
    });

    test('should solve for case 2', () {
      final solution = Solution104();
      final input = TreeNode(1, null, TreeNode(2));
      const expectedOutput = 2;

      expect(solution.maxDepth(input), expectedOutput);
    });
  });

  group('Question 872', () {
    test('should solve for case 1', () {
      final solution = Solution872();
      final root1 = TreeNode(
        3,
        TreeNode(5, TreeNode(6), TreeNode(2, TreeNode(7), TreeNode(4))),
        TreeNode(1, TreeNode(9), TreeNode(8)),
      );
      final root2 = TreeNode(
        3,
        TreeNode(5, TreeNode(6), TreeNode(7)),
        TreeNode(1, TreeNode(4), TreeNode(2, TreeNode(9), TreeNode(8))),
      );
      const expectedOutput = true;

      expect(solution.leafSimilar(root1, root2), expectedOutput);
    });

    test('should solve for case 2', () {
      final solution = Solution872();
      final root1 = TreeNode(1, TreeNode(2), TreeNode(3));
      final root2 = TreeNode(1, TreeNode(3), TreeNode(2));
      const expectedOutput = false;

      expect(solution.leafSimilar(root1, root2), expectedOutput);
    });
  });

  group('Question 199', () {
    test(
      'should solve for case 1',
      () {
        final solution = Solution199();
        final input = TreeNode(
          1,
          TreeNode(2, null, TreeNode(5)),
          TreeNode(3, null, TreeNode(4)),
        );
        final expected = [1, 3, 4];

        expect(solution.rightSideView(input), expected);
      },
    );

    test(
      'should solve for case 2',
      () {
        final solution = Solution199();
        final input = TreeNode(1, null, TreeNode(3));
        final expected = [1, 3];

        expect(solution.rightSideView(input), expected);
      },
    );

    test(
      'should solve for case 3',
      () {
        final solution = Solution199();
        final input = null;
        final expected = [];

        expect(solution.rightSideView(input), expected);
      },
    );
  });

  group('Question 700', () {
    test('should solve for case 1', () {
      final solution = Solution700();
      final inputRoot = TreeNode(
        4,
        TreeNode(2, TreeNode(1), TreeNode(3)),
        TreeNode(7),
      );
      final inputVal = 2;
      final expectedOutput = TreeNode(2, TreeNode(1), TreeNode(3));

      expect(
        solution.searchBST(inputRoot, inputVal)?.val,
        expectedOutput.val,
      );
    });

    test('should solve for case 2', () {
      final solution = Solution700();
      final inputRoot = TreeNode(
        4,
        TreeNode(2, TreeNode(1), TreeNode(3)),
        TreeNode(7),
      );
      final inputVal = 5;
      final expectedOutput = null;

      expect(
        solution.searchBST(inputRoot, inputVal),
        expectedOutput,
      );
    });
  });

  group('Question 841', () {
    final solution = Solution841();

    test('should solve for case 1', () {
      final input = <List<int>>[
        [1],
        [2],
        [3],
        [],
      ];

      final expectedOutput = true;

      expect(solution.canVisitAllRooms(input), expectedOutput);
    });

    test('should solve for case 2', () {
      final input = <List<int>>[
        [1, 3],
        [3, 0, 1],
        [2],
        [0],
      ];

      final expectedOutput = false;

      expect(solution.canVisitAllRooms(input), expectedOutput);
    });
  });
}

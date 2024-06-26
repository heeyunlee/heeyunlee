/// [2390. Removing Stars From a String](https://leetcode.com/problems/removing-stars-from-a-string/description)
///
/// You are given a string s, which contains stars *.
///
/// In one operation, you can:
/// - Choose a star in s.
/// - Remove the closest non-star character to its left, as well as remove the
/// star itself.
/// Return the string after all stars have been removed.
///
/// Note:
/// - The input will be generated such that the operation is always possible.
/// It can be shown that the resulting string will always be unique.
///
/// Example 1:
/// - Input: s = "leet**cod*e"
/// - Output: "lecoe"
///
/// Explanation: Performing the removals from left to right:
/// - The closest character to the 1st star is 't' in "leet**cod*e". s becomes
/// "lee*cod*e".
/// - The closest character to the 2nd star is 'e' in "lee*cod*e". s becomes
/// "lecod*e".
/// - The closest character to the 3rd star is 'd' in "lecod*e". s becomes
/// "lecoe".
/// - There are no more stars, so we return "lecoe".
class Solution2390 {
  String removeStarsUsingRegExp(String s) {
    while (s.contains('*')) {
      final pattern = RegExp(r'([a-zA-z])\*');
      final result = pattern.firstMatch(s);
      final firstMatch = result?.group(0);

      if (firstMatch != null) {
        s = s.replaceFirst(firstMatch, '');
      }
    }

    return s;
  }

  String removeStars(String s) {
    List result = [];
    final sStack = s.split('');

    for (int i = 0; i < sStack.length; i++) {
      final char = sStack[i];
      if (char != '*') {
        result.add(sStack[i]);
      } else {
        result.removeLast();
      }
    }

    return result.join();
  }
}

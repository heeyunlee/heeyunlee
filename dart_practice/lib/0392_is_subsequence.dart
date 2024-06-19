/// [392. Is Subsequence](https://leetcode.com/problems/is-subsequence/description)
///
/// Given two strings s and t, return true if s is a subsequence of t, or false
/// otherwise.
///
/// A subsequence of a string is a new string that is formed from the original
/// string by deleting some (can be none) of the characters without disturbing
/// the relative positions of the remaining characters. (i.e., "ace" is a
/// subsequence of "abcde" while "aec" is not).
///
/// Example 1:
/// - Input: s = "abc", t = "ahbgdc"
/// - Output: true
///
class Solution392 {
  bool isSubsequence(String s, String t) {
    if (t.length < s.length) return false;

    if (s.isEmpty) return true;

    int sPointer = 0;
    int tPointer = 0;

    while (tPointer < t.length && sPointer < s.length) {
      final sChar = s[sPointer];
      final tChar = t[tPointer];

      if (sChar == tChar) {
        sPointer++;
      }

      tPointer++;
    }

    return sPointer == s.length;
  }
}

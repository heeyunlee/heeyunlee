/// ## [1768. Merge Strings Alternately](https://leetcode.com/problems/merge-strings-alternately/description/)
///
/// You are given two strings word1 and word2. Merge the strings by adding
/// letters in alternating order, starting with word1. If a string is longer
/// than the other, append the additional letters onto the end of the merged
/// string.
///
/// Return the merged string.
///
/// ### Example 1:
///
/// Input: word1 = "abc", word2 = "pqr"
///
/// Output: "apbqcr"
///
/// Explanation: The merged string will be merged as so:
///
/// word1:  a   b   c
///
/// word2:    p   q   r
///
/// merged: a p b q c r
String mergeStringAlternatively(String word1, String word2) {
  var solution = '';
  var index = 0;

  while (index < word1.length || index < word2.length) {
    if (index < word1.length) {
      solution += word1[index];
    }

    if (index < word2.length) {
      solution += word2[index];
    }

    index++;
  }

  return solution;
}

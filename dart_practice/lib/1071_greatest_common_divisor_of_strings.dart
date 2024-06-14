/// ## [1071. Greatest Common Divisor of Strings](https://leetcode.com/problems/greatest-common-divisor-of-strings/description/)
///
/// For two strings s and t, we say "t divides s" if and only if
/// s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or
/// more times).
///
/// Given two strings str1 and str2, return the largest string x such that x
/// divides both str1 and str2.
///
/// ### Example 1:
/// - Input: str1 = "ABCABC", str2 = "ABC"
/// - Output: "ABC"
String gcdOfStrings(String str1, String str2) {
  final gcd = str1.length.gcd(str2.length);
  final gcdString = str1.substring(0, gcd);
  return str1 + str2 == str2 + str1 ? gcdString : '';
}

/// [345. Reverse Vowels of a String](https://leetcode.com/problems/reverse-vowels-of-a-string/description/)
///
/// Given a string s, reverse only all the vowels in the string and return it.
///
/// The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both
/// lower and upper cases, more than once.
///
/// Example 1:
/// - Input: s = "hello"
/// - Output: "holle"
///
/// Example 2:
/// - Input: s = "leetcode"
/// - Output: "leotcede"
class Solution345 {
  String reverseVowels(String s) {
    final vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

    int left = 0;
    int right = s.length - 1;
    List<String> ss = s.split('');

    while (left < right) {
      while (left < right && vowels.indexOf(ss[left]) == -1) {
        left++;
      }

      while (left < right && vowels.indexOf(ss[right]) == -1) {
        right--;
      }

      final temp = ss[left];
      ss[left] = ss[right];
      ss[right] = temp;
      left++;
      right--;
    }

    return ss.join();
  }
}

import 'dart:math';

int lengthOfLongestSubstring(String s) {
  int start = 0;
  int maxLength = 0;
  Map<String, int> usedChar = {};

  List<String> split = s.split('');

  for (int i = 0; i < split.length; i++) {
    final char = split[i];

    if (usedChar.containsKey(char) && start <= usedChar[char]!) {
      start = usedChar[char]! + 1;
    } else {
      maxLength = max(maxLength, i - start + 1);
    }

    usedChar[char] = i;
  }

  return maxLength;
}

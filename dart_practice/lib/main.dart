import 'package:dart_leetcode/345_reverse_vowels_of_a_string.dart';
import 'package:dart_leetcode/605_can_place_flowers.dart';

import '0003_longest_substring_without_repeating_char.dart';
import '0005_longest_palindromic_substring.dart';
import '0015_threesum.dart';
import '0020_valid_parentheses.dart';
import '0055_jump_game_1.dart';
import '0167_two_sum_2.dart';
import '0053_max_sub_array.dart';
import '0198_rorate_array.dart';
import '0252_meeting_rooms1.dart';
import '0253_meeting_rooms2.dart';
import '0344_reverse_string.dart';
import '0367_valid_perfect_square.dart';
import '0557_reverse_words_in_a_string.dart';
import '0704_binary_search.dart';
import '0811_subdomain_visit_counter.dart';
import '1071_greatest_common_divisor_of_strings.dart';
import '1249_min_remove_to_make_valid.dart';
import '1768_merge_strings_alternatively.dart';

void main() {
  final threesumList = [-2, 0, 1, 1, 2];
  print(threesum(threesumList));

  final solutionFor1768 = mergeStringAlternatively('abc', 'pqr');
  print(solutionFor1768);

  final solutionFor1071 = gcdOfStrings('ABCABC', 'ABC');
  print(solutionFor1071);

  final solution605 = Solution605();
  print(solution605.canPlaceFlowers([1, 0, 0, 0, 1], 1));

  final solution345 = Solution345();
  final a = solution345.reverseVowels('lEetCOde');
  print(a);
}

void main2() {
  String asd = "babad";
  print(longestPalindromeSubstring(asd));
}

void main3() {
  final intervals = [
    [7, 10],
    [2, 4]
  ];
  print(canAttendMeetings(intervals));
}

void main4() {
  final a = List<int>.generate(10005, (i) => i);
  print(twoSum2(a, 10405));
}

void main5() {
  final intervals1 = [
    [7, 10],
    [2, 4]
  ];
  print(minMeetingRooms(intervals1));
}

void main6() {
  final b = "pwwkewasihqoeuhqokafoubeuiwrbqwyque";
  print(lengthOfLongestSubstring(b));
}

void main7() {
  final c = "a)b(c)d";
  print(minRemoveToMakeValid(c));
}

void main8() {
  final d = "{ { } [ ] [ [ [ ] ] ] }";
  print(isValidParentheses(d));
}

void main9() {
  print(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4, 12]));
}

void main10() {
  List<String> e = ["H", "a", "n", "n", "a", "h"];
  reverseString(e);
  print(e);
}

void main11() {
  String f = "Let's take LeetCode contest";
  print(reverseWordsInAString(f));
}

void main12() {
  print(binarySearch([1, 2, 3, 4, 5, 6, 10, 15], 10));
}

void main13() {
  rotateArray([1, 2, 3, 4, 5, 6, 7], 3);
}

void main14() {
  final nums = [3, 2, 1, 1, 4];
  print(canJump(nums));
}

void main15() {
  print(validPerfectSquare(100));
}

void main16() {
  final input = [
    "4781 hal.net",
    "3742 kmi.ca",
    "7602 fai.fly.com",
    "8927 qpf.gqi.org",
    "6183 gtu.org",
    "7371 yvs.co",
    "6661 xuf.network",
    "9066 yvr.co",
    "4070 rhf.uyy.org",
    "4283 etj.tnr.com",
    "3443 rif.ibf.team",
    "5030 ixi.com",
    "5908 yvs.ca",
    "5789 wph.us",
    "1614 gxj.network",
    "8109 zyh.jfz.network",
    "8435 tpr.irv.network",
    "9848 gbq.ca",
    "4632 gqi.co",
    "7102 gxj.net",
    "2490 dbr.cgl.net",
    "8422 tnw.zqk.team",
    "2018 uuy.network",
    "2358 vbo.com",
    "7372 buf.co",
    "3698 fzx.org",
    "7792 kwd.com",
    "6693 uno.ytn.net",
    "2948 cpl.ser.network",
    "9722 npa.uyy.us",
    "219 yls.network",
    "486 asz.ca",
    "5431 znq.us",
    "8238 vos.ajl.net",
    "1342 fff.ca",
    "2228 cso.gdw.org",
    "2090 zon.vbo.com",
    "7031 zqk.us",
    "2984 okv.us",
    "1052 ocf.com",
    "6148 hwu.com",
    "813 oms.zfz.us",
    "2546 uuy.com",
    "1592 hwu.ca",
    "6253 okv.team",
    "4596 uuy.com",
    "7437 dzg.wsv.network",
    "7970 fly.us",
    "961 jtg.us",
    "962 xec.jfz.co",
    "610 tid.team",
    "7281 nkw.org",
    "5870 yes.gtu.network",
    "1165 llh.okv.us",
    "7084 ser.com",
    "5510 oca.hwu.org",
    "4454 ork.yvs.network",
    "8670 iux.us",
    "5526 oth.wsv.team",
    "2905 wiz.wqv.org",
    "1917 arm.ulz.com",
    "451 pfz.wsv.network",
    "8271 yjt.org",
    "24 gxz.net",
    "7323 msc.nva.com",
    "4837 pfx.ibf.network",
    "529 qay.team",
    "3311 kwd.us",
    "5803 wsv.co",
    "834 hly.hlr.network",
    "5959 yvs.us",
    "6251 hlr.co",
    "2936 vzd.dfa.network",
    "8546 zqy.us",
    "483 bix.ytn.co",
    "2226 oqr.gbq.org",
    "7600 zqk.ca",
    "2612 hbu.cwn.net",
    "430 oxv.bhp.com",
    "9954 srz.vbo.team",
    "3925 hoh.com",
    "5647 ses.ltq.org",
    "1476 gdw.us",
    "1535 ajl.network",
    "5253 bom.yvs.team",
    "8864 thk.net",
    "7029 ser.co",
    "8694 gxk.tfm.co",
    "5255 rbb.fff.com",
    "8491 xzz.ser.co",
    "7181 hnl.net",
    "5919 axj.fff.org",
    "4088 mqy.asz.org",
    "4954 bec.okv.com",
    "8943 dak.wqv.network",
    "5556 jtg.com",
    "1458 xov.epf.co",
    "2868 uwm.yjt.com",
    "6474 tfm.net",
    "2045 tid.co",
  ];

  print(subdomainVisitCounter(input));
}

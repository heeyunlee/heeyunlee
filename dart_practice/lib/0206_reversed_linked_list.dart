/// [206. Reverse Linked List](https://leetcode.com/problems/reverse-linked-list/description)
///
/// Given the head of a singly linked list, reverse the list, and return the
/// reversed list.
///
/// Example 1:
/// - Input: head = [1,2,3,4,5]
/// - Output: [5,4,3,2,1]
///
class Solution206 {
  ListNode? reverseList(ListNode? head) {
    ListNode? reversedNode;

    while (head != null) {
      reversedNode = ListNode(head.val, reversedNode);

      if (head.next != null) {
        head = ListNode(head.next!.val, head.next!.next);
      } else {
        head = null;
      }
    }

    return reversedNode;
  }
}

class ListNode {
  ListNode([
    this.val = 0,
    this.next,
  ]);

  int val;
  ListNode? next;

  @override
  bool operator ==(Object other) {
    return other is ListNode && val == other.val && next == other.next;
  }
}

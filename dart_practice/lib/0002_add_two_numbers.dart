class ListNode {
  ListNode({
    this.val = 0,
    this.next,
  });

  int val;
  ListNode? next;
}

ListNode? addTwoNumbers(ListNode l1, ListNode l2, int? carryOver) {
  final currentValue = l1.val + l2.val + (carryOver ?? 0);
  final newCarryOver = currentValue % 10;
  ListNode result = ListNode(val: currentValue ~/ 10);

  if (l1.next != null || l2.next != null || newCarryOver != 0) {
    l1.next = l1.next != null ? l1.next : ListNode();
    l2.next = l1.next != null ? l2.next : ListNode();

    result.next = addTwoNumbers(l1, l2, carryOver);
  }

  return result;
}

from typing import Optional


''' 2. Add Two Numbers

    You are given two non-empty linked lists representing two non-negative integers. 
    The digits are stored in reverse order, and each of their nodes contains a single 
    digit. Add the two numbers and return the sum as a linked list.

    You may assume the two numbers do not contain any leading zero, except the number 
    0 itself.

    [Example]
    Input: l1 = [2,4,3], l2 = [5,6,4]
    Output: [7,0,8]
    Explanation: 342 + 465 = 807.

    Constraints:

    - The number of nodes in each linked list is in the range [1, 100].
    - 0 <= Node.val <= 9
    - It is guaranteed that the list represents a number that does not have leading zeros.
'''


class ListNode:
    def __init__(self, val=0, next=None):
        self.val: int = val
        self.next: int = next

# LinkedList


class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode], carry_over: int = 0) -> Optional[ListNode]:
        current_value = l1.val + l2.val + carry_over
        carry_over = current_value // 10
        result = ListNode(current_value % 10)

        if (l1.next != None or l2.next != None or carry_over != 0):
            l1.next = l1.next if l1.next != None else ListNode()
            l2.next = l2.next if l2.next != None else ListNode()
            result.next = self.addTwoNumbers(l1.next, l2.next, carry_over)

        return result

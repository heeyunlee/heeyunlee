from typing import Optional

# Definition for singly-linked list.


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        first = ListNode(0)
        first.next = head
        tortoise = hare = first
        steps = 0

        while hare and hare.next:
            if steps >= n:
                tortoise = tortoise.next
            hare = hare.next
            steps += 1

        self._delete(tortoise)

        return first.next

    def _delete(self, node: ListNode):
        node.next = node.next.next
    
import UIKit


class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var reversedNode: ListNode? = nil
        var curr: ListNode? = head
        
        while curr != nil {
            reversedNode = ListNode(curr!.val, reversedNode)
            
            if curr!.next != nil {
                curr = ListNode(curr!.next!.val, curr!.next!.next)
            } else {
                curr = nil
            }
        }
        
        return reversedNode
    }
}


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


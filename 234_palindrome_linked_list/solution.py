# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def isPalindrome(self, head: ListNode) -> bool:
        forwards = self.toArray(head)
        head = self.reverseList(head)
        backwards = self.toArray(head)
        return (forwards == backwards)

    def reverseList(self, head):
        prev = None
        current = head
        while (current != None):
            original_next = current.next
            current.next = prev
            prev = current
            current = original_next
        return prev

    def toArray(self, head):
        arr = []
        while (head != None):
            arr.append(head.val)
            head = head.next
        return arr

# Setup linked list
el5 = ListNode(4)
el4 = ListNode(3, el5)
el3 = ListNode(2, el4)
el2 = ListNode(3, el3)
el1 = ListNode(4, el2)


sol = Solution()
result = sol.isPalindrome(el1)
print(f"Result: {result}")

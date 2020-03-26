# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def isPalindrome(self, head: ListNode) -> bool:
        current = head
        a = []
        while current is not None:
            a.append(current.val)
            current = current.next
        if a == a[::-1] :
            return True

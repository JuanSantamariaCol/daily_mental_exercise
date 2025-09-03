# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

#This way not return a object, return a arrary 
# Runtime 0 ms 100 %
# Memory 211.66 mb 43.75%
# Complexity O(n) + O(n) because in the moment to use reverse method the complexity of this is O(n)
def reverse_list(head)
    result = []
    while !head.nil? do 
        result << head.val
        head = head.next
    end
    result.reverse
end
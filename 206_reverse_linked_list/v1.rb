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
# Memory 211.46 mb 96.88%
# Complexity O(n)
def reverse_list(head)
    current = head 
    previus = nil 
    node = nil #We will use this variable to not lose the thread because when doing the inverse of the two node we must change the orientation of the pointing of a node and this causes two nodes to not connect.
    while !current.nil? do 
        node = current.next
        current.next = previus
        previus = current
        current = node
    end
    previus
end
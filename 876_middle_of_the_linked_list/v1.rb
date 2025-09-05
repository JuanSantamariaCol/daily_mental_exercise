# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}
# Runtime 0 ms 100% 
# Memory 211.30 MB 68.86%

def middle_node(head)
    len = 0
    first_node = head
    while !head.nil? do 
        len += 1
        head = head.next
    end
    head = first_node
    
    (len/2).times do 
        head = head.next
    end
    head
end

def build_linked_list(arr)
    return nil if arr.empty?
    head = ListNode.new(arr[0])
    current = head
    arr[1..].each do |val|
        current.next = ListNode.new(val)
        current = current.next
    end
    head
end

def display(head)
    current = head
    while current
        print "#{current.val} -> "
        current = current.next
    end
    puts "nil"
end

list = [1,2,3,4,5]
head = build_linked_list(list)
result  = middle_node(head)
pp display(result)

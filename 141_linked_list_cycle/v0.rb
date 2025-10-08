

#Runtime 62 ms (Beats 88.46%), Memory 214.01 MB (Beats 15.38%)
# can improve
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def generate_linked_list(arr_numbers, cycle= nil)
    head = ListNode.new(arr_numbers.shift,nil )
    arr_numbers.each  do |number|
        last_node = head 
        last_node = last_node.next while last_node.next
        last_node.next = ListNode.new(number, nil)
    end

    if cycle
        start_cycle_node = head
        cycle.times do 
            pp "Current node: #{head.val}"
            start_cycle_node = start_cycle_node.next
        end
        last_node = head
        last_node = last_node.next while last_node.next
        last_node.next = start_cycle_node
    end
    head
end

def print_list(node, items = 100)
    result = ""
    while !node.nil?  && items != 0
        result += " #{node.val.to_s } -> "
        node = node.next
        items -= 1 
    end
    pp result
end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    memory = {}
    while !head.nil?
        if memory.has_key? head.object_id
            return true 
        end
        memory[head.object_id] = head.val
        head = head.next
    end
    false
end


l1 = generate_linked_list([3,2,0,-4], 1)
pp hasCycle(l1)
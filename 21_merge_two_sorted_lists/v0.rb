# Trash code the most difficult path 

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end


# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    current_l1 = list1
    current_l2 = list2

    until current_l1.nil?
        pp "current_node l1:  #{current_l1.val}"
        pp "current_node l2:  #{current_l2.val}"
        if current_l1.val == current_l2.val
            puts "Same value"
            new_node = ListNode.new(current_l2.val, current_l1.next)
            current_l1.next = new_node
            current_l1 = current_l1.next
        elsif current_l1.val > current_l2.val
            puts "L1 > L2"
            new_node = ListNode.new(current_l2.val, current_l1)
            previous_node.next = new_node
        else
            "L2 > L1"
            previous_node = current_l1
            current_l1 = current_l1.next
            next
        end

        pp "_"*50

        previous_node = current_l1
        current_l1 = current_l1.next
        current_l2 = current_l2.next
    end

    unless current_l2.nil?
        previous_node.next  = current_l2
    end
    list1
end


def generate_linked_list(arr_numbers)
    head = ListNode.new(arr_numbers.shift,nil )
    arr_numbers.each  do |number|
        last_node = head 
        last_node = last_node.next while last_node.next
        last_node.next = ListNode.new(number, nil)
    end
    pp head
    head
end

def print_list(node)
    result = ""
    while !node.nil?
        result += " #{node.val.to_s } -> "
        node = node.next
    end
    pp result
end

l1 = generate_linked_list([1,2,4])
l2 = generate_linked_list([1,3,4])

result = merge_two_lists(l1,l2)
pp print_list(result)


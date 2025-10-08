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
    return list1 if list1.nil? && list2.nil?
    return list2 if list1.nil?
    return list1 if list2.nil?

    if list1.val < list2.val
        current_l1 = list1 
        current_l2 = list2
    else
        current_l1 = list2
        current_l2 = list1
    end

    while !current_l1.next.nil? 
        break if current_l2.nil? 
        pp print_list(current_l1)
        pp print_list(current_l2)

        if ( current_l2.val >= current_l1.val ) && (current_l2.val <= current_l1.next.val)
            pp "Insert "
            new_node = ListNode.new(current_l2.val, current_l1.next)
            current_l1.next = new_node
            current_l2 = current_l2.next

            pp "result cycle: #{print_list(current_l1)}"
            pp "Total: #{print_list(list1)}"
            pp "_" * 60
        else
            pp "Next l1"
            current_l1 = current_l1.next

            pp "result cycle: #{print_list(current_l1)}"
            pp "Total: #{print_list(list1)}"
            pp "_" * 60
            next
        end
    end
    
    if current_l2
        current_l1.next = current_l2
    end

    if list1.val < list2.val
        list1
    else
        list2
    end
end


def generate_linked_list(arr_numbers)
    head = ListNode.new(arr_numbers.shift,nil )
    arr_numbers.each  do |number|
        last_node = head 
        last_node = last_node.next while last_node.next
        last_node.next = ListNode.new(number, nil)
    end
    head
end

def print_list(node)
    result = ""
    while !node.nil?
        result += " #{node.val.to_s } -> "
        node = node.next
    end
    result
end

l1 = generate_linked_list([2])
l2 = generate_linked_list([1])

result = merge_two_lists(l1,l2)
pp print_list(result)


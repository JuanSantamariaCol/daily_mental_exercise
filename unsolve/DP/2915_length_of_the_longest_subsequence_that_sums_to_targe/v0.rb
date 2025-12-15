# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def length_of_longest_subsequence(nums, target)

    return -1 if nums.size == 1 && nums.first != target
    return 1 if nums.size == 1 && nums.first == target 
    return nums.size if nums.sum == target

    pointer_l = 0
    pointer_r = nums.size - 1
    result = (nums.include? target) ? 1 : -1
    counter_window = 2
    window  = nums.slice(pointer_l, pointer_r)


    while window.any?
        window  = nums.slice(pointer_l, pointer_r)

        return window.size if window.sum == target

        diference = (window.sum - target).abs

        if window.include?(diference) && ( result >= (window.size - 1))
            result = window.size - 1
        end

        if counter_window == 0
            counter_window = 2
            pointer_r -=1
        elsif counter_window == 2 
            pointer_r -=1 
        else counter_window == 1
            pointer_r +=1 
            pointer_l +=1
        end
        counter_window -=1
        
    end

    result 

end
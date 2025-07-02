# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
    pointer_l = 0
    pointer_r = nums.length - 1 
    while  pointer_l < pointer_r
        if nums[pointer_l].odd?
            nums << nums[pointer_l]
            nums.delete_at(pointer_l)
            pointer_r -= 1
        else
            pointer_l += 1
        end

        if nums[pointer_r].even?
            number = nums[pointer_r]
            nums.delete_at(pointer_r)
            nums.prepend(number)
        else
            pointer_r -=1
        end
    end
    return nums

end


nums = [3,1,2,4]

pp sort_array_by_parity(nums)
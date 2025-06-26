# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    i_rigth = 0 
    i_left = nums.size - 1 
    size = nums.size - 1 
    while i_rigth <= i_left do 
        # pp "indice R: #{i_rigth}, L: #{i_left}  ItemR:#{nums[i_rigth]} ItemL:#{nums[i_left]}"
        if nums[i_rigth] == 0
            nums.delete_at(i_rigth)
            nums << 0 
        else
            i_rigth += 1
        end
        if nums[i_left]== 0 && i_left != size
            nums.delete_at(i_left)
            nums << 0 
        end
        i_left -= 1   
    end
    return nums
end

# [1,3,12,0,0]
nums = [0,0,1]
pp move_zeroes(nums)


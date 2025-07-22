# @param {Integer[]} nums
# @return {Integer}
# algorithm: Sliding Window
# Runtime 1621 🆘 TODO:optimize
def maximum_unique_subarray(nums)
    pointer_l = 0
    memory = {} # hash para guardar los numeros que han salido y su posicion sin repetir
    max = 0 
    nums.each_with_index do |item, pointer_r|
        if memory.has_key?(item) && memory[item] >= pointer_l
            pointer_l = memory[item] + 1
        end
        memory[item] = pointer_r
        max = [nums[pointer_l .. pointer_r].sum, max].max 
    end
    max
end
